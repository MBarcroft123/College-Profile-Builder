//
//  DetailViewController.swift
//  College Profile Builder #1
//
//  Created by Student on 1/27/16.
//  Copyright © 2016 The Coolest Guy Around. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var numberOfStudentsTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    var college: College!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collegeTextField.text = college.name
        locationTextField.text = college.location
        numberOfStudentsTextField.text = String(college.numberOfStudents)
        imageView.image = college.image
}
    
    @IBAction func onTappedSaveButton(sender: UIButton) {
        college.name = collegeTextField.text!
        college.location = locationTextField.text!
        college.numberOfStudents = Int(numberOfStudentsTextField.text!)!
    }
    

}