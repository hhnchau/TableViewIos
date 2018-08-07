//
//  ViewController.swift
//  TableViewIos
//
//  Created by Kingpes on 8/6/18.
//  Copyright © 2018 Kingpes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tblView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrHeader[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Default
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        //cell?.textLabel?.text = arr[indexPath.section][indexPath.row]
        //return cell!
        
        
        //Custom
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblView.text = arr[indexPath.section][indexPath.row]
        cell.imgView.image = UIImage(named: arrImage[indexPath.section][indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        
        let screen2: ViewController2 = storyboard?.instantiateViewController(withIdentifier: "screen2") as! ViewController2
        
        screen2.name = arrImage[indexPath.section][indexPath.row]
        
        self.navigationController?.pushViewController(screen2, animated: true)
        
    }
    
    let arr: Array<Array<String>> = [["1","2"],["3","4","5"],["6","7","8","9"]]
    let arrImage: Array<Array<String>> = [["logokingpes","logokingpes"],["logokingpes","logokingpes","logokingpes"],["logokingpes","logokingpes","logokingpes","logokingpes"]]
    let arrHeader:Array<String> = ["A", "B", "C"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
    }
}

