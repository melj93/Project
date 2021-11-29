//
//  ViewController.swift
//  Tasks
//
//  Created by samuel Jeong on 2021/11/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableview: UITableView!
    
    var tasks = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = ["a35","b64","c24"]
        tableview.delegate = self
        tableview.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }
    
    
}
