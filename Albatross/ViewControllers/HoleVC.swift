//
//  HoleVC.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-13.
//

import UIKit

class HoleVC: UIViewController {
    @IBOutlet weak var customView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customView.layer.cornerRadius = 60
    }
    



}
