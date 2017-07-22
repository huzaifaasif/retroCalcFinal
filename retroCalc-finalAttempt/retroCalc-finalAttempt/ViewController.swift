//
//  ViewController.swift
//  retroCalc-finalAttempt
//
//  Created by Huzaifa Asif on 2017-07-22.
//  Copyright © 2017 Huzaifa Asif. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var btnSound:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        
        let soundURL = NSURL.fileURL(withPath: path!)
        
        do{
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            
            btnSound.prepareToPlay()
        }
        catch let err as NSError{
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func numberPressed(sender: UIButton){
        
        playSound()
        
        
    }

    func playSound(){
        
        if (btnSound.isPlaying){
            btnSound.stop()
        }
        
        btnSound.play()
        
    }
    
    
    

}
