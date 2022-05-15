//
//  ClubCell.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-09.
//

import UIKit



class ClubTableCell: UITableViewCell {
    static let identifier = "clubTC"
    @IBOutlet weak var clubImage: UIImageView!
    
    static func nib() -> UINib{
        return UINib(nibName: "ClubTableCell", bundle: nil)
    }
    
    public func configure(with type: String, name: String){
        clubImage.layer.borderWidth = 3
        clubImage.layer.borderColor = UIColor.darkGray.cgColor
        clubImage.layer.cornerRadius = clubImage.frame.width / 2
        
    }
    
// MARK: - Unimportant
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
