//
//  SubmitTodoController.swift
//  ToDoList
//
//  Created by IMCS2 on 7/26/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit
class SubmitTodoController: UIViewController {

    @IBOutlet weak var txttodo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnSubmit(_ sender: Any) {
        let todo: String = txttodo.text!
        todoListItems.append(todo)
        UserDefaults.standard.set(todoListItems, forKey: "List")
        
    }
    
}
