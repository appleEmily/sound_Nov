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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap(_ sender: Any) {
        let path = Bundle.main.path(forResource: "taiko", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        //取得した音楽をurlに変換している。
        audioplayer = try! AVAudioPlayer(contentsOf: url)
        audioplayer.play()
    }
    


}

