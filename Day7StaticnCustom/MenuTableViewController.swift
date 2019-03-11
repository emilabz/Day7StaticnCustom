//
//  ViewController.swift
//  Day7StaticnCustom
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 Emil. All rights reserved.
//

import UIKit

class MenuTableViewController:UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            switch indexPath.row {
            case 0: print("Go to home")
            case 1:print("Go to Products Page")
            case 2:print("Go to Order History")
            default:print("Invalid choice")
            }
        }
        else{
            switch indexPath.row {
            case 0: print("Go to Help")
            case 1:print("Go to About Us")
            case 2:print("Go to Contact Us")
            case 3:print("Go to Logout")
            default:print("Invalid choice")
            }
        }
    }
}

