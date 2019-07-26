//
//  ViewController.swift
//  ToDoList
//
//  Created by IMCS2 on 7/26/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit
//global varibale and it will always the same and can be used anywhere
var todoListItems = [String]()


class ViewController: UITableViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        if let array = UserDefaults.standard.value(forKey: "List"){
            todoListItems = array as? [String] ?? []
        }else{
            UserDefaults.standard.set(todoListItems, forKey: "list")
        }
        //the code is not running twice
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoListItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var todo: String = todoListItems[indexPath.row]
        cell.textLabel?.text = todo
        return cell
    }
    //****This line will help to delete the file you want to delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            todoListItems.remove(at: indexPath.row)
        }
        tableView.reloadData()
        print("total item: \(todoListItems.count)")
        for name in todoListItems{
            print(name)
        }
        
    }

}

