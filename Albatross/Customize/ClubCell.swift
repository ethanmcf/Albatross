//
//  ClubCell.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-09.
//

import UIKit

protocol ClubCellDelegate: AnyObject{
    
}

class ClubCell: UITableViewCell {
    static let identifier = "clubcell"
    weak var delegate: ClubCellDelegate?
    
    static func nib() -> UINib{
        return UINib(nibName: "ClubCell", bundle: nil)
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
