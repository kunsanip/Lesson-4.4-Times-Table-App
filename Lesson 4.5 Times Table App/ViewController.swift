//
//  ViewController.swift
//  Lesson 4.5 Times Table App
//
//  Created by Admin on 2/4/19.
//  Copyright © 2019 Learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var slider: UISlider!
    @IBAction func sliderChanger(_ sender: Any) {
    print(slider.value)
        
       
        tableView.reloadData()
    }
    @IBOutlet weak var tableView: UITableView!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{

        return 50
        
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String(Int(slider.value)) + " x " + String(indexPath.row+1) + " = " + String((indexPath.row+1) * Int(slider.value))
        
        print(String(slider.value) + " x " + String(indexPath.row+1) + " = " + String((indexPath.row+1) * Int(slider.value)) + "ehllp")
        
        
            return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view, typically from a nib.
    }


}

