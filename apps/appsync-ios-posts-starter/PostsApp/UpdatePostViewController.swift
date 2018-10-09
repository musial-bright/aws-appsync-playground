//
//  UpdatePostViewController.swift
//  PostsApp
//

import Foundation
import UIKit
import AWSAppSync

class UpdatePostViewController: UIViewController {
    
    var post: AllPostQuery.Data.AllPost.Post?
    @IBOutlet weak var authorInput: UITextField!
    @IBOutlet weak var titleInput: UITextField!
    @IBOutlet weak var contentInput: UITextField!
    @IBOutlet weak var urlInput: UITextField!
    var postUpdatesDelegate: PostUpdates?
    var appSyncClient: AWSAppSyncClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient!
        
        authorInput.text = post?.author
        titleInput.text = post?.title
        contentInput.text = post?.content
        urlInput.text = post?.url
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updatePost(_ sender: Any) {
        let postMutation = UpdatePostMutation(id: post!.id, author: authorInput.text, title: titleInput.text, content: contentInput.text, url: urlInput.text, expectedVersion: post!.version)
        
        postUpdatesDelegate?.postUpdated(postMutation: postMutation)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
