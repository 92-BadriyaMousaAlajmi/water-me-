//
//  Person.swift
//  اسقني
//
//  Created by بدرية موسى العجمي on 7/15/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import Foundation

class PersonSignedUp{
    
    var Password : String = ""
    var Email : String = ""
    var FirstName : String = ""
    var LastName : String = ""
    var Birthday : String
    var ConformPassword : String
    
    init(password : String, email : String, firstName : String, lastName : String, birthday: String, conformPassword: String){
    self.Password = password
    self.Email = email
    self.FirstName = firstName
    self.LastName = lastName
    self.Birthday = birthday
    self.ConformPassword = conformPassword
}

}
