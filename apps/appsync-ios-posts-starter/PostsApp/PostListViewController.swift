//
//  ViewController.swift
//  PostsApp
//

import UIKit
import AWSAppSync

class PostCell: UITableViewCell {
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    func updateValues(author: String, title:String?, content: String?) {
        authorLabel.text = author
        titleLabel.text = title
        contentLabel.text = content
    }
}

protocol PostUpdates {
    func newPostAdded(postMutation: AddPostMutation)
    func postUpdated(postMutation: UpdatePostMutation)
    func postDeleted(postMutation: DeletePostMutation)
}

class PostListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PostUpdates {
    
    func newPostAdded(postMutation: AddPostMutation) {
        appSyncClient?.perform(mutation: postMutation) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            } else {
                self.loadAllPosts()
            }
            if let resultError = result?.errors {
                print("Error adding the item on server: \(resultError)")
                return
            }
        }
    }
    
    func postUpdated(postMutation: UpdatePostMutation) {
        appSyncClient?.perform(mutation: postMutation) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred while making request: \(error.localizedDescription )")
                return
            } else {
                self.loadAllPosts()
            }
            if let resultError = result?.errors {
                print("Error updating the item on server: \(resultError)")
                return
            }
        }
    }
    
    func postDeleted(postMutation: DeletePostMutation) {
        appSyncClient?.perform(mutation: postMutation) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            } else {
                self.loadAllPosts()
            }
            if let resultError = result?.errors {
                print("Error deleting the item on server: \(resultError)")
                return
            }
        }
    }
    
    var appSyncClient: AWSAppSyncClient?
    
    @IBOutlet weak var tableView: UITableView!
    //var postList = [Post]()
    var postList: [AllPostQuery.Data.AllPost.Post] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    func loadAllPosts() {
        appSyncClient?.fetch(query: AllPostQuery(), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let posts = result?.data?.allPost.posts {
                self.postList = posts
            } else {
                self.postList = []
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        loadAllPosts()
    }
    
    @objc func addTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "NewPostViewController") as! AddPostViewController
        controller.postUpdatesDelegate = self
        self.present(controller, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        let post = postList[indexPath.row]
        cell.updateValues(author: post.author!, title: post.title, content: post.content)
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            let post = postList[indexPath.row]
            let postMutation = DeletePostMutation(id: post.id, expectedVersion: post.version)
            postDeleted(postMutation: postMutation)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let post = postList[indexPath.row]
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "UpdatePostViewController") as! UpdatePostViewController
        // TODO: provide post for update
        controller.post = post
        controller.postUpdatesDelegate = self
        self.present(controller, animated: true, completion: nil)
    }

}

