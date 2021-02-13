//
//  SmallTitleTableViewCell.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 13/02/21.
//

import UIKit

class SmallTitleTableViewCell: UITableViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "SmallTitleTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    //MARK:- Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK:- LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
