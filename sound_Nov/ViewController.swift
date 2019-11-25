//
//  ViewController.swift
//  sound_Nov
//
//  Created by 野崎絵未里 on 2019/11/13.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioplayer: AVAudioPlayer!

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapBeginButton() {
        let path = Bundle.main.path(forResource: "guitar", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        audioplayer = try! AVAudioPlayer(contentsOf: url)
        audioplayer.play()
        button.setImage(UIImage(named: "cymbal"), for: .normal)
    }
    
    @IBAction func tapFinish(_ sender: Any) {
        
        audioplayer.stop()
        button.setImage(UIImage(named: "guitar"), for: .normal)
    }
    
    
    
    
    


}

