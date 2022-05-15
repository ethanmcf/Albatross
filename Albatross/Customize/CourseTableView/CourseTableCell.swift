//
//  CourseTableCell.swift
//  Albatross
//
//  Created by Ethan McFarland on 2022-05-13.
//

import UIKit

class CourseTableCell: UITableViewCell {
    static let identifier = "courseTC"
    
    static func nib() -> UINib{
        return UINib(nibName: "CourseTableCell", bundle: nil)
    }
    
    public func configure(){
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
