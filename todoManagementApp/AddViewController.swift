//
//  AddViewController.swift
//  todoManagementApp
//
//  Created by Kozasa Mizuki on 2019/10/13.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit

var todoList = [String]()

class AddViewController: UIViewController {

    @IBOutlet weak var addedToDo: UITextField!
    @IBAction func AddButton(_ sender: Any) {
        todoList.append(addedToDo.text!)
        addedToDo.text! = ""
        UserDefaults.standard.set(todoList, forKey: "todoList")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
