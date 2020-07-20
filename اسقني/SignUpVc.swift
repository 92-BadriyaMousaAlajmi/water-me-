//
//  SignUpVc.swift
//  اسقني
//
//  Created by بدرية موسى العجمي on 7/15/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import UIKit

class SignUpVc: UIViewController {
    @IBOutlet weak var ConformPasswordField: UITextField!
    @IBOutlet weak var FirstNameField: UITextField!
    
    @IBOutlet weak var LastNameField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    
    @IBOutlet weak var PasswordField: UITextField!
    @IBOutlet weak var BirthdayField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func SignUpBtn(_ sender: UIButton) {
                      let Email = EmailField.text!
                      let Password = PasswordField.text!
                      let ConformPassword = ConformPasswordField.text!
                      let FirstName = FirstNameField.text!
                      let LastName = LastNameField.text!
                      let Birthday = BirthdayField.text!
                  
            
            // You can use another User Struct as you wish
            let user = User(FirstName: FirstName, LastName: LastName, Email: Email, Birthday: Birthday)

            if validatePassword(password: Password, conformPassword: ConformPassword ){
                Networking.signUp(user: user, password: Password, success:  { uid in
                    // ✅ Success
                    print("You have signed up successfully")
                    self.performSegue(withIdentifier: "signed", sender: nil)
                }){
                    // ❌ Failed
                    self.errorMessage(message: "Couldn't sign in, make sure the email and password are correct")
                }
            }
            else{
                errorMessage(message: "Password are not matching!")
            }
        
}

    func validatePassword( password: String, conformPassword: String ) -> Bool{
        return password == conformPassword
}

func errorMessage(message: String){
    let alertController = UIAlertController(title: "Opps🙈", message: message , preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .cancel)
    alertController.addAction(okAction)
    present(alertController, animated: true)
}

}
 
