//
//  CategoryCollectionViewCell.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 13/02/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    //MARK:- Nib Name and register Method
    static let identifier = "CategoryCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    //MARK:- Outlets
    @IBOutlet weak var categoryLabel: UILabel!
    
    //MARK:- LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
