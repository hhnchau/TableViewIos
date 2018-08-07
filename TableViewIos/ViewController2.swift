//
//  ViewController2.swift
//  TableViewIos
//
//  Created by Kingpes on 8/7/18.
//  Copyright © 2018 Kingpes. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imgView2: UIImageView!
    var name:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
        imgView2.image = UIImage(named: name)
        
    }
}
