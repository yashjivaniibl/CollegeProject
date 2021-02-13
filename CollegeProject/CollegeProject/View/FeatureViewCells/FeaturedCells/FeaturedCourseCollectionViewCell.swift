//
//  FeaturedCourseCollectionViewCell.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 13/02/21.
//

import UIKit

class FeaturedCourseCollectionViewCell: UICollectionViewCell {

    //MARK:- NIB register Name and Method
    static let identifier = "FeaturedCourseCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    //MARK:- Outlets
    @IBOutlet weak var courseThumbnail: UIImageView!
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var courseInstructure: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var bestSellerLabel: UILabel!
    
    //MARK:- LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
