//
//  TabBar.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-09.
//

import UIKit

class TabBar: UITabBar {

    class TabBar: UITabBarController, UITabBarControllerDelegate {
        required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.tabBar.unselectedItemTintColor = UIColor.black
            
        }
    }

}
