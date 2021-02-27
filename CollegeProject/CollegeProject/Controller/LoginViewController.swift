//
//  LoginViewController.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 14/02/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AuthTextFieldTableViewCell.nib(), forCellReuseIdentifier: AuthTextFieldTableViewCell.identifier)
        tableView.register(SubmitButtonTableViewCell.nib(), forCellReuseIdentifier: SubmitButtonTableViewCell.identifier)
        tableView.alwaysBounceVertical = false
        
    }
    
}

//MARK:- UITableView Delegate and Data Source Methods
extension LoginViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Email"
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthTextFieldTableViewCell.identifier) as! AuthTextFieldTableViewCell
            cell.textField.placeholder = "Enter Password"
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: SubmitButtonTableViewCell.identifier) as! SubmitButtonTableViewCell
            cell.submitButton.setTitle("Login", for: .normal)
            cell.submitButton.backgroundColor = .blue
            cell.submitButton.setTitleColor(.white, for: .normal)
            cell.submitButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: SubmitButtonTableViewCell.identifier) as! SubmitButtonTableViewCell
            cell.submitButton.setTitle("Forget password", for: .normal)
            cell.submitButton.backgroundColor = .white
            cell.submitButton.setTitleColor(.blue, for: .normal)
            return cell
        case 9:
            let cell = tableView.dequeueReusableCell(withIdentifier: SubmitButtonTableViewCell.identifier) as! SubmitButtonTableViewCell
            cell.submitButton.backgroundColor = .white
            cell.submitButton.setTitleColor(.blue, for: .normal)
            cell.submitButton.setTitle("New User? Sign Up", for: .normal)
            cell.submitButton.addTarget(self, action: #selector(singUpButtonTapped), for: .touchUpInside)
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 300
        case 1,3:
            return 60
        case 5:
            return 50
        case 7, 9:
            return 30
        default:
            return 10
        }
    }
    
    
}

//MARK:- Button Tapped Action Methods
extension LoginViewController{
    
    @objc func loginButtonTapped(){
        let homeVC = storyboard?.instantiateViewController(identifier: "homeVC") as! HomeViewController
        homeVC.modalPresentationStyle = .fullScreen
        present(homeVC, animated: true, completion: nil)
        
    }
    
    @objc func singUpButtonTapped(){
        let signUpVC = storyboard?.instantiateViewController(identifier: "signUpVC") as! SignUpViewController
        present(signUpVC, animated: true, completion: nil)
    }
}
