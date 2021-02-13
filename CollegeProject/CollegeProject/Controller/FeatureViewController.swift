//
//  ViewController.swift
//  CollegeProject
//
//  Created by Yash on 13/02/21.
//

import UIKit

class FeatureViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet var tableView: UITableView!
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TitleTableViewCell.nib(), forCellReuseIdentifier: TitleTableViewCell.identifier)
        tableView.register(SmallTitleTableViewCell.nib(), forCellReuseIdentifier: SmallTitleTableViewCell.identifier)
        tableView.register(FeaturedCourseTableViewCell.nib(), forCellReuseIdentifier: FeaturedCourseTableViewCell.identifier)
        tableView.register(CategoryTableViewCell.nib(), forCellReuseIdentifier: CategoryTableViewCell.identifier)
    }
}

//MARK:- UITableView Delegate and DataSource Methods
extension FeatureViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier) as! TitleTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: SmallTitleTableViewCell.identifier) as! SmallTitleTableViewCell
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: FeaturedCourseTableViewCell.identifier) as! FeaturedCourseTableViewCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier) as! CategoryTableViewCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return  300
        case 1:
            return 100
        default:
            return 300
        }
    }
}
