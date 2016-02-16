//
//  MapViewController.swift
//  College Profile Builder #1
//
//  Created by Student on 2/16/16.
//  Copyright © 2016 The Coolest Guy Around. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    var college : College!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func DoneButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    

}
