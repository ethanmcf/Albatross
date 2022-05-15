//
//  ClubViewCell.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-10.
//

import UIKit

class ClubViewCell: UICollectionViewCell {
    static let identifier = "clubCC"
    @IBOutlet weak var clubImage: UIImageView!
    @IBOutlet weak var clubName: UILabel!
    
    static func nib() -> UINib{
        return UINib(nibName: "ClubViewCell", bundle: nil)
    }
    
    public func configure(with name: String, imageName: String){
        clubImage.image = UIImage(named: imageName)
        clubName.text = name
        clubImage.layer.cornerRadius = clubImage.frame.width / 2
        clubImage.layer.borderColor = UIColor.darkGray.cgColor
        clubImage.layer.borderWidth = 3
        clubImage.backgroundColor = UIColor.systemGray6
        
        
        
    }

}


