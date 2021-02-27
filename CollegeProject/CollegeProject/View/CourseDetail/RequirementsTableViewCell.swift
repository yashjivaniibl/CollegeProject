//
//  RequirementsTableViewCell.swift
//  CollegeProject
//
//  Created by Yash Jivani on 27/02/21.
//

import UIKit

class RequirementsTableViewCell: UITableViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "RequirementsTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    //MARK:- IBOutlets
    @IBOutlet weak var courseRequirements: UILabel!
    
    //MARK:- LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
