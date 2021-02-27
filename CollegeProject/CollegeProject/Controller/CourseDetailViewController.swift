//
//  CourseDetailViewController.swift
//  CollegeProject
//
//  Created by Yash Jivani on 27/02/21.
//

import UIKit
import AVFoundation
import AVKit

class CourseDetailViewController: UIViewController {

    //MARK:- IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CourseIntroductionTableViewCell.nib(), forCellReuseIdentifier: CourseIntroductionTableViewCell.identifier)
        
        tableView.register(CoursePreviewTableViewCell.nib(), forCellReuseIdentifier: CoursePreviewTableViewCell.identifier)
        
        tableView.register(RequirementsTableViewCell.nib(), forCellReuseIdentifier: RequirementsTableViewCell.identifier)
        
        tableView.register(CourseCurriculumTableViewCell.nib(), forCellReuseIdentifier: CourseCurriculumTableViewCell.identifier)
        
        tableView.register(InstructorProfileTableViewCell.nib(), forCellReuseIdentifier: InstructorProfileTableViewCell.identifier)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.tabBarController?.tabBar.isHidden = false
    }
}

//MARK:- UITableView Delegate and Datasource Methods
extension CourseDetailViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: CourseIntroductionTableViewCell.identifier) as! CourseIntroductionTableViewCell
            return cell
        
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: CoursePreviewTableViewCell.identifier) as! CoursePreviewTableViewCell
            cell.coursePreviewButton.addTarget(self, action: #selector(previewButtonTapped), for: .touchUpInside)
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: RequirementsTableViewCell.identifier) as! RequirementsTableViewCell
            return cell
            
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: CourseCurriculumTableViewCell.identifier) as! CourseCurriculumTableViewCell
            return cell
        
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: InstructorProfileTableViewCell.identifier) as! InstructorProfileTableViewCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
           return 150
        
        case 1:
            return 250
            
        case 2:
            return 300
            
        case 3:
            return 200
        
        case 4:
            return 300
        default:
            return 100
        }
    }
}



//MARK:- Button Tapped Action Methods
extension CourseDetailViewController{
    @objc func previewButtonTapped(){
        let videoURL = Bundle.main.url(forResource: "Angle", withExtension: "mp4")
        let player = AVPlayer(url: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }
}
