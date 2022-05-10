//
//  ClubVC.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-09.
//

import UIKit

class ClubVC: UIViewController {
    @IBOutlet weak var clubTable: UITableView!
    @IBOutlet weak var searchClub: UITextField!
    var navBar: UINavigationBar = UINavigationBar()
    @IBOutlet weak var titleView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clubTable.register(ClubCell.nib(), forCellReuseIdentifier: ClubCell.identifier)
        clubTable.delegate = self
        clubTable.dataSource = self
        
        searchClub.createSearchField(img: UIImage(systemName: "magnifyingglass")!)
        
        
        self.setNavBarToTheView()
                // Do any additional setup after loading the view.
                self.title = "test test"
        
        //self.navigationItem.titleView = titleView
        
    }
    
    func setNavBarToTheView() {
        self.navBar.frame = CGRect(x: 0, y: 40, width: 375, height: 80)  // Here you can set you Width and Height for your navBar
            self.navBar.backgroundColor = (UIColor.systemGray6)
            self.view.addSubview(navBar)
        }
        
}

// MARK: - Table View
extension ClubVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = clubTable.dequeueReusableCell(withIdentifier: ClubCell.identifier, for: indexPath) as! ClubCell
        //cell.delegate = self
        return cell
    }
   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    }
}

extension UITextField {
    func createSearchField(img: UIImage){
        let container = UIView(frame: CGRect(x: 0, y: 0, width: 37, height: 20))
        let leftImage = UIImageView(frame: CGRect(x: 10, y: 0, width: 22, height: 20))
        leftImage.image = img
        container.addSubview(leftImage)
        self.leftView = container
        self.leftViewMode = .always
        
        self.layer.cornerRadius = 7
        self.layer.borderColor = UIColor.systemGray6.cgColor
        
    }
}
