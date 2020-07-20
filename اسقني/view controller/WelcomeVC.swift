//
//  WelcomeVC.swift
//  اسقني
//
//  Created by بدرية موسى العجمي on 7/15/20.
//  Copyright © 2020 Moon. All rights reserved.
//
import AVFoundation
import UIKit
import Foundation
import AVKit


class WelcomeVC: UIViewController {
    var flowerData : Flowers!
    
    override func viewDidLoad() {
          super.viewDidLoad()
          setFlowersInfo()
        playMusic(musicName: "kiss the rain", type: "mp4")
      }
    
    @IBOutlet weak var addToMYGuardian: UIButton!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var FlowerNameField: UITextField!
    @IBOutlet weak var HowTOGrowLabel: UILabel!
    @IBOutlet weak var SimillerPlantsLabel: UILabel!

     func setFlowersInfo(){
        FlowerNameField.text = flowerData.Name
        Image.image = UIImage(named: flowerData.Name)
        HowTOGrowLabel.text = flowerData.SunExposure
        HowTOGrowLabel.text = flowerData.NativeArea
        HowTOGrowLabel.text = flowerData.PlantType
        SimillerPlantsLabel.text = flowerData.HowToGrow
        
    }
    @IBAction func AddToMyGuardianBtn(_ sender: UIButton) {
        self.addedMessage(message: "لقد تمت الاضافه لحديقتي")
    }
    @IBAction func VedioBtn(_ sender: UIButton) {
         vedio(name: flowerData.Name)
    }
    
var themeSong: AVAudioPlayer = AVAudioPlayer()
     func playMusic(musicName: String, type: String, loop: Int = 0)
     {
         let AssortedMusics = URL(fileURLWithPath: Bundle.main.path(forResource: musicName, ofType: type)!)
         themeSong = try! AVAudioPlayer(contentsOf: AssortedMusics)
         themeSong.prepareToPlay()
         themeSong.numberOfLoops = loop
         themeSong.volume = 0.5
         themeSong.play()
     }

    func vedio(name: String){
        let بيغونيا = URL(string: "https://www.youtube.com/watch?v=aJCgQqIUrwA")
        let player1 = AVPlayer(url: بيغونيا!)
        let playerLayer1 = AVPlayerLayer(player: player1)
        playerLayer1.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer1)
        player1.play()

    //جلارديا
        let جلارديا = URL(string: "https://www.youtube.com/watch?v=u9cKrtkvLME")
        let player2 = AVPlayer(url: جلارديا!)
        let playerLayer2 = AVPlayerLayer(player: player2)
        playerLayer2.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer2)
        player2.play()
        
            //موناردة
        let موناردة = URL(string: "https://www.youtube.com/watch?v=lA6lKAl2MZ4")
        let player3 = AVPlayer(url: موناردة!)
        let playerLayer3 = AVPlayerLayer(player: player3)
        playerLayer3.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer3)
        player3.play()
    }
    
    func addedMessage(message: String){
        let alertController = UIAlertController(title: "لقد تمت الاضافه لحديقتي ", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
