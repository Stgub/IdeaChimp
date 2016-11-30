//
//  ViewController.swift
//  IdeaChimp
//
//  Created by Steven Graf on 11/16/16.
//  Copyright © 2016 Steven Graf. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet weak var logInScreen: UIView!
    @IBOutlet weak var signUpQuestionsScreen: UIView!
    @IBOutlet weak var signUpScreen: UIView!
    
    @IBAction func firstLogInBtnTapped(_ sender: Any) {
        signUpQuestionsScreen.isHidden = true
        signUpScreen.isHidden = true
        logInScreen.isHidden = false
    }
    
    @IBAction func logInScreenBackBtn(_ sender: Any) {
        signUpQuestionsScreen.isHidden = true
        signUpScreen.isHidden = true
        logInScreen.isHidden = true
    }
    
    @IBAction func firstSignUpBtnTapped(_ sender: Any) {
        logInScreen.isHidden = false
        signUpQuestionsScreen.isHidden = false
    }
    
    @IBAction func signUpQuestionsBackBtn(_ sender: Any) {
        signUpQuestionsScreen.isHidden = true
        signUpScreen.isHidden = true
        logInScreen.isHidden = true
    }
    
    @IBAction func signUpNextBtnTapped(_ sender: Any) {
        signUpScreen.isHidden = false
    }
    
    @IBAction func signUpScreenBackBtn(_ sender: Any) {
        signUpQuestionsScreen.isHidden = false
        signUpScreen.isHidden = true
        logInScreen.isHidden = false
    }
  


}

