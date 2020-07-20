//
//  Remind&InfoVC.swift
//  اسقني
//
//  Created by بدرية موسى العجمي on 7/20/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import UIKit

class Remind_InfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var reminderlabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBAction func backBtn(_ sender: UIButton) {
    }
    @IBAction func InfoRmindController(_ sender: UISegmentedControl) {
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
