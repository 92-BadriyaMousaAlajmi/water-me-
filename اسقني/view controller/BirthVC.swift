//
//  BirthVC.swift
//  اسقني
//
//  Created by بدرية موسى العجمي on 7/17/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import UIKit

class BirthVC: UIViewController {
    var flowerData : Flowers!
    
    @IBOutlet weak var FlowerImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var InfoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBirthFlowersInfo()
        // Do any additional setup after loading the view.
    }
    
     func setBirthFlowersInfo(){
       FlowerImage.image = UIImage(named: flowerData.Name)
       nameLabel.text = flowerData.Name
       InfoField.text = flowerData.SunExposure
       InfoField.text  = flowerData.NativeArea
       InfoField.text  = flowerData.PlantType
       InfoField.text  = flowerData.HowToGrow
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
