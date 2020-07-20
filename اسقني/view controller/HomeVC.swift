//
//  HomeVC.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 7/11/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var PlantsSearchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBAction func TestBtn(_ sender: UIButton) {
    }
    @IBAction func signOut(){
        let alertController = UIAlertController(title: "Sign out!", message: "Are you sure you want to sign out?" , preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(cancelAction)
        let okAction = UIAlertAction(title: "Sign out!", style: .destructive)
                self.dismiss(animated: true, completion: nil)
            }
        }
        //alertController.addAction(okAction)
       // self.present(alertController, animated: true)

    
 // override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
 //               let flower =
 //                 FlowerInfo[indexPath.row]
 //               performSegue(withIdentifier: "Flowers", sender: flower )
 //        }
 //
 // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 //            // Get the new view controller using segue.destination.
 //            // Pass the selected object to the new view controller.
 //            let searchVc = segue.destination as! WelcomeVC
 //            let search = sender as! Flowers
 //                searchVc.flowerData = search


