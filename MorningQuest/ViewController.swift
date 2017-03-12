//
//  ViewController.swift
//  MorningQuest
//
//  Created by Pondd on 3/12/17.
//  Copyright © 2017 Pondd. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    func playSound() {
        let url = Bundle.main.url(forResource: "Rooster-ringtone", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            player.numberOfLoops = -1
        } catch let error {
            print(error.localizedDescription)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        playSound()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillDisappear(_ animated: Bool) {
        player?.pause()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func MazeSolved(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }

}

