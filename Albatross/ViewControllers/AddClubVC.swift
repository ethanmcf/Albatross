//
//  AddClubVC.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-10.
//

import UIKit

class AddClubVC: UIViewController {
    @IBOutlet weak var clubColl: UICollectionView!
    let searchClub = UISearchController()
    
    
    
    let clubList = [
        0:["Driver","Driver Club"],
        1:["3-Wood","Wood Club"],
        2:["5-Wood","Wood Club"],
        3:["Hybrid","Hybrid Club"],
        4:["4-Iron","Iron Club"],
        5:["5-Iron","Iron Club"],
        6:["6-Iron","Iron Club"],
        7:["7-Iron","Iron Club"],
        8:["8-Iron","Iron Club"],
        9:["9-Iron","Iron Club"],
        10:["P-Wedge","Wedge Club"],
        11:["A-Wedge","Wedge Club"],
        12:["L-Wedge","Wedge Club"],
        13:["Custom","Custom Club"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clubColl.register(ClubViewCell.nib(), forCellWithReuseIdentifier: ClubViewCell.identifier)
        clubColl.delegate = self
        clubColl.dataSource = self
        
        self.navigationItem.searchController = searchClub
        
    }
    


}

extension AddClubVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clubList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clubColl.dequeueReusableCell(withReuseIdentifier: ClubViewCell.identifier, for: indexPath) as! ClubViewCell
        cell.configure(with: clubList[indexPath.row]![0], imageName: clubList[indexPath.row]![1])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 150, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 40
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
