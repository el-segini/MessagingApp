//
//  CompoaseViewController.swift
//  MessagingApp
//
//  Created by Mohab on 1/25/20.
//  Copyright © 2020 Mohab. All rights reserved.
//

import UIKit

class CompoaseViewController: ViewController {
    
      override func viewDidLoad() {
           super.viewDidLoad()

       }
    
    @IBAction func addPost(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func deletePost(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
 
    @IBOutlet weak var textView: UITextView!
}
