//
//  ScoreVC.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-10.
//

import UIKit

class ScoreVC: UIViewController {
    @IBOutlet weak var courseTable: UITableView!
    let searchClub = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseTable.register(CourseTableCell.nib(), forCellReuseIdentifier: CourseTableCell.identifier)
        courseTable.delegate = self
        courseTable.dataSource = self
        
        self.navigationItem.searchController = searchClub
    }

}

// MARK: - Table View
extension ScoreVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = courseTable.dequeueReusableCell(withIdentifier: CourseTableCell.identifier, for: indexPath) as! CourseTableCell
        //cell.configure()
        return cell
    }
   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    }
}
