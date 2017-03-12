//
//  ActivityViewController.swift
//  MorningQuest
//
//  Created by Pondd on 3/12/17.
//  Copyright © 2017 Pondd. All rights reserved.
//

import UIKit
import MapKit

class ActivityViewController: UIViewController {
    @IBOutlet weak var MapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let span = MKCoordinateSpanMake(0.075, 0.075)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 13.7563, longitude: 100.5018), span: span)
        MapView.setRegion(region, animated: true)
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
