//
//  TabBarViewController.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import UIKit


class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 3
        self.selectedViewController?.tabBarItem.badgeValue  = "2"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     
     }
    }
    */

}
