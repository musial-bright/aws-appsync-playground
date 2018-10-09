//
//  NewPostViewController.swift
//  PostsApp
//

import Foundation
import UIKit
import AWSAppSync

/*
class Post {
    let id: String
    let author: String
    let title: String?
    let content: String?
    let url: String?
    
    init(id:String = UUID().uuidString,
         author: String,
         title: String? = nil,
         content: String? = nil,
         url: String? = nil) {
        self.author = author
        self.title = title
        self.content = content
        self.url = url
        self.id = id
    }
}
*/

class AddPostViewController: UIViewController {
    
    @IBOutlet weak var authorInput: UITextField!
    @IBOutlet weak var titleInput: UITextField!
    @IBOutlet weak var contentInput: UITextField!
    @IBOutlet weak var urlInput: UITextField!
    var postUpdatesDelegate: PostUpdates?
    var appSyncClient: AWSAppSyncClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addNewPost(_ sender: Any) {
        //let post = Post(author: authorInput.text!, title: titleInput.text, content: contentInput.text, url: urlInput.text)
        
        let postMutation = AddPostMutation(id: UUID().uuidString, author: authorInput.text!, title: titleInput.text!, content: contentInput.text!, url: "www.google.com")
        
        postUpdatesDelegate?.newPostAdded(postMutation: postMutation)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
