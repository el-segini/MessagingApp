//
//  ViewController.swift
//  MessagingApp
//
//  Created by Mohab on 1/25/20.
//  Copyright © 2020 Mohab. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let postData = ["message1","message2","message3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.dataSource = self
        tableView?.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "xx")
        else {
            print("cell error")
            return UITableViewCell()
        }
        cell.textLabel?.text = postData[indexPath.row]
        
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let composeVC = segue.destination as! CompoaseViewController
        composeVC.modalPresentationStyle = .fullScreen
        
    }


}

