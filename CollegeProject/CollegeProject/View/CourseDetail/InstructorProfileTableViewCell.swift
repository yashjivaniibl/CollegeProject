//
//  InstructorProfileTableViewCell.swift
//  CollegeProject
//
//  Created by Yash Jivani on 27/02/21.
//

import UIKit

class InstructorProfileTableViewCell: UITableViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "InstructorProfileTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
