//
//  ViewController.swift
//  PassDataWithProtocol
//
//  Created by Mohsen Abdollahi on 5/7/19.
//  Copyright © 2019 Mohsen Abdl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PassData , TableViewNew {
    

    var list : [Task] = []
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        list.append(Task(name: "First Obj"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.mylabelInCell.text = list[indexPath.row].name
        cell.cellDelegate = self
        cell.index = indexPath
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.delegate = self
    }
    
    
    func passdata(data: String) {
        list.append(Task(name: data))
        myTableView.reloadData()
    }
    
    
    func onClickCell(index: Int) {
            print("\(index) is clicked !")
        let myIndex = index
        print((list[myIndex].name))
        }
    
    
    
}





