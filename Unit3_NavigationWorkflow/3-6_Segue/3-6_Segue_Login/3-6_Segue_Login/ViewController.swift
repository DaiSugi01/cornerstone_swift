//
//  ViewController.swift
//  3-6_Segue_Login
//
//  Created by 杉原大貴 on 2020/12/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameField: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userNameField.text
        }
    }
    
    @IBAction func forgotUserNameTapped(_ sender: Any) {
//        performSegue(withIdentifier: "goToLanding2", sender: sender)
    }
    
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLanding2", sender: sender)
    }
    
    
}

