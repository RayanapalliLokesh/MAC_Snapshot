//
//  ViewController.swift
//  table
//
//  Created by Student on 29/10/22.
//  Copyright © 2022 roomsvital. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var continents: [String] = ["Asia","Europe","Australia"]
    var Asia: [String] = ["India","China","Bangladesh"]
    var Europe: [String] = ["UK","France","Italy"]
    var Australia: [String] = ["Melbourne","Perth","Sydney"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return continents.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) ->Int {
if(section==0)
{
    return Asia.count
        }
        else if(section==1)
        {
            return Europe.count
        }
        else
        {
            return Australia.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuse", for: indexPath)
        
        if(indexPath.section==0){ cell.textLabel?.text = Asia [indexPath.row]
            
        }
        
        else if(indexPath.section==1){
            
            cell.textLabel?.text = Europe [indexPath.row]
            
        } else{
            
            cell.textLabel?.text = Australia [indexPath.row]
            
        }
        
        return cell
        

    }
    
    func tableView (_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return continents[section]
    }

var value:String!

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if(indexPath.section==0){
    
    value=Asia[indexPath.row]
    
    }
    else if(indexPath.section==1){
        value=Europe [indexPath.row]
        
    }
    
    else{
        
        value=Australia[indexPath.row]
    }
    let alert = UIAlertController(title: "Welcome", message: value, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
    self.present(alert, animated: true, completion: nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

