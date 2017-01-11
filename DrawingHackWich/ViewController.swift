//
//  ViewController.swift
//  DrawingHackWich
//
//  Created by Tconti on 1/10/17.
//  Copyright © 2017 Group Effort. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
      var audioBegin = AVAudioPlayer()
    var drumRoll = URL(fileURLWithPath: Bundle.main.path(forResource: "Drum Roll", ofType: "mp3")!)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func pitch1(_ sender: UIButton) {
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: drumRoll, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
        audioBegin.prepareToPlay()
        audioBegin.play()
    }


    
    
}

