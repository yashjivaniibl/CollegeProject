//
//  CourseIntroductionTableViewCell.swift
//  CollegeProject
//
//  Created by Yash Jivani on 27/02/21.
//

import UIKit

class CourseIntroductionTableViewCell: UITableViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "CourseIntroductionTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var courseTitle: UILabel!
    
    @IBOutlet weak var courseDescription: UILabel!
    
    @IBOutlet weak var numberOfStundentEnrolled: UILabel!
    
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
