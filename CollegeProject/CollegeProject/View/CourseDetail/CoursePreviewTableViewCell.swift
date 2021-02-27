//
//  CoursePreviewTableViewCell.swift
//  CollegeProject
//
//  Created by Yash Jivani on 27/02/21.
//

import UIKit

class CoursePreviewTableViewCell: UITableViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "CoursePreviewTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    //MARK:- IBOutlets
    @IBOutlet weak var courseThumbnail: UIImageView!
    @IBOutlet weak var coursePreviewButton: UIButton!
    
    //MARK:- LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
