
import Foundation

struct User{
        var FirstName:String = ""
        var LastName:String = ""
        var Email: String = ""
        var Birthday: String = ""
        
        func fullName() -> String{
            FirstName + " " + LastName
        }
    }
