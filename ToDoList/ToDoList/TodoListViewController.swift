//
//  ViewController.swift
//  ToDoList
//
//  Created by samuel Jeong on 2021/12/15.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = ["Find Mike", "Do nothing at night", "Hack Pantagon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell: UITableViewCell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType != .checkmark{
                cell.accessoryType = .checkmark
            }else {
                cell.accessoryType = .none
            }
        }
    }
    
    
    //MARK: - Add New Item
    
    @IBAction func onAdd(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        
        alert.addTextField { alertTextFiled in
            alertTextFiled.placeholder = "Create New Item"
            textField = alertTextFiled
            self.itemArray.append(textField.text!)
        }
        
        let action = UIAlertAction(title: "Add Item", style: .default) { action in
            // What will happend when user clicks the Add Item button on our UIAlert
            print(self.itemArray[3])
        }
        
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

