//
//  SignUpViewController.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 14/02/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AuthTextFieldTableViewCell.nib(), forCellReuseIdentifier: AuthTextFieldTableViewCell.identifier)
        tableView.register(SubmitButtonTableViewCell.nib(), forCellReuseIdentifier: SubmitButtonTableViewCell.identifier)
    }
    

}


//MARK:- UITableView Delegate and Data Source Methods
extension SignUpViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Email"
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Email"
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Email"
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Email"
            return cell
        case 9:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Email"
            return cell
        case 11:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Password"
            return cell
        case 13:
            let cell = tableView.dequeueReusableCell(withIdentifier: SubmitButtonTableViewCell.identifier) as! SubmitButtonTableViewCell
            cell.submitButton.setTitle("SignUp", for: .normal)
            cell.submitButton.backgroundColor = .blue
            cell.submitButton.setTitleColor(.white, for: .normal)
            cell.submitButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
            return cell
        case 15:
            let cell = tableView.dequeueReusableCell(withIdentifier: SubmitButtonTableViewCell.identifier) as! SubmitButtonTableViewCell
            cell.submitButton.setTitle("Already User? Login", for: .normal)
            cell.submitButton.backgroundColor = .white
            cell.submitButton.setTitleColor(.blue, for: .normal)
            return cell
        
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 100
        case 1,3,5,7,9:
            return 60
        case 13:
            return 50
        case 15:
            return 30
        default:
            return 10
        }
    }
}

//MARK:- Button Tapped Action Methods
extension SignUpViewController{
    @objc func signUpButtonTapped(){
        let homeVC = storyboard?.instantiateViewController(identifier: "homeVC") as! HomeViewController
        present(homeVC, animated: true, completion: nil)
    }
}
