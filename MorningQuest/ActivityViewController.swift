//
//  ActivityViewController.swift
//  MorningQuest
//
//  Created by Pondd on 3/12/17.
//  Copyright © 2017 Pondd. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func NextButtonPressed(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let tViewController = storyBoard.instantiateViewController(withIdentifier: "ThankyouViewController") as! ThankyouViewController
        self.navigationController?.pushViewController(tViewController, animated: true)
    }


}
