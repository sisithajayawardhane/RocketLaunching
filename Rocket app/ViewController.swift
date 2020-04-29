//
//  ViewController.swift
//  Rocket app
//
//  Created by sisitha  jayawardhane on 4/26/20.
//  Copyright © 2020 Sisitha Jayawardhane. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var DarkBlueBG: UIImageView!
    @IBOutlet weak var PowerButton: UIButton!
    @IBOutlet weak var CloudHolder: UIView!
    @IBOutlet weak var Rocket: UIImageView!
    @IBOutlet weak var HustleLBL: UILabel!
    @IBOutlet weak var OnLBL: UILabel!
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }
    
    @IBAction func PowerBtnPressed(_ sender: Any) {
        CloudHolder.isHidden = false
        DarkBlueBG.isHidden = true
        PowerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.Rocket.frame = CGRect(x: 0, y: 50, width: 414, height: 687)
            
        }) { (finished) in
            self.HustleLBL.isHidden = false
            self.OnLBL.isHidden = false
        }
        
    }
    

}

