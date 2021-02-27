//
//  CourseCurriculumTableViewCell.swift
//  CollegeProject
//
//  Created by Yash Jivani on 27/02/21.
//

import UIKit

class CourseCurriculumTableViewCell: UITableViewCell {

    
    //MARK:- NIB register Name and Method
    static let identifier = "CourseCurriculumTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    @IBOutlet weak var courseCurriculum1: UILabel!
    
    @IBOutlet weak var courseCurriculum2: UILabel!
    
    @IBOutlet weak var courseCurriculum3: UILabel!
    
    @IBOutlet weak var courseCurriculum4: UILabel!
    
    @IBOutlet weak var courseCurriculum5: UILabel!
    @IBOutlet weak var showMoreButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
