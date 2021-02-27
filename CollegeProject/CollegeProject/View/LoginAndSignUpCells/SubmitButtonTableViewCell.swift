//
//  SubmitButtonTableViewCell.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 14/02/21.
//

import UIKit

class SubmitButtonTableViewCell: UITableViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "SubmitButtonTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    //MARK:- Outlets
    @IBOutlet weak var submitButton: UIButton!
    
    //MARK:- LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
