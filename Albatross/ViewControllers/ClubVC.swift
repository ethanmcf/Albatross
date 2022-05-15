//
//  ClubVC.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-09.
//

import UIKit

class ClubVC: UIViewController {
    @IBOutlet weak var clubTable: UITableView!
    let searchClub = UISearchController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clubTable.register(ClubTableCell.nib(), forCellReuseIdentifier: ClubTableCell.identifier)
        clubTable.delegate = self
        clubTable.dataSource = self
        
        self.navigationItem.searchController = searchClub
        
        
    }
    
    func gatherClubData(){
        
    }
    
}

// MARK: - Table View
extension ClubVC: UITableViewDelegate,UITableViewDataSource{
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

        let cell = clubTable.dequeueReusableCell(withIdentifier: ClubTableCell.identifier, for: indexPath) as! ClubTableCell
        cell.configure(with: "", name: "")
        return cell
    }
   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    }
}
