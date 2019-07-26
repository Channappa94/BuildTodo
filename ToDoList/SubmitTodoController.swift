//
//  SubmitTodoController.swift
//  ToDoList
//
//  Created by IMCS2 on 7/26/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit
class SubmitTodoController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var txttodo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnSubmit(_ sender: Any) {
        var todo: String = txttodo.text!
        todoListItems.append(todo)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoListItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
