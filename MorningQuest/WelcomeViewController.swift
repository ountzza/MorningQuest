//
//  WelcomeViewController.swift
//  MorningQuest
//
//  Created by Pondd on 3/12/17.
//  Copyright © 2017 Pondd. All rights reserved.
//

import UIKit
import AVFoundation

class WelcomeViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    func playSound() {
        player?.pause()
        
        let url = Bundle.main.url(forResource: "Adventure", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ReadyButtonPressed(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let aViewController = storyBoard.instantiateViewController(withIdentifier: "ActivityViewController") as! ActivityViewController
        self.navigationController?.pushViewController(aViewController, animated: true)
    }

}
