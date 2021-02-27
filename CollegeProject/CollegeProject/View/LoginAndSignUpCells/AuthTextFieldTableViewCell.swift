//
//  TextFieldTableViewCell.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 14/02/21.
//

import UIKit

class AuthTextFieldTableViewCell: UITableViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "AuthTextFieldTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
