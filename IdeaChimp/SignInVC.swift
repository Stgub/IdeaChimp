//
//  ViewController.swift
//  IdeaChimp
//
//  Created by Steven Graf on 11/16/16.
//  Copyright © 2016 Steven Graf. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

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
  
    // Sign Up Screen Facebook sign in
    @IBAction func signInFacebookBtnTapped(_ sender: Any) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Steven: Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("Steven: User cancelled Facebook authentication")
            } else {
                print("Steven: Successfully authenticated with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
        
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("Steven: Unable to authenticate with Firebase - \(error)")
            } else {
                print("Steven: Successfully authenticated with Firebase")
            }
        })
    }


}

