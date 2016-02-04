//
//  DetailViewController.swift
//  College Profile Builder #1
//
//  Created by Student on 1/27/16.
//  Copyright © 2016 The Coolest Guy Around. All rights reserved.
//
import SafariServices
import UIKit

class DetailViewController: UIViewController, SFSafariViewControllerDelegate {
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var numberOfStudentsTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var webUrlTextfield: UITextField!
    
    var college: College!

    override func viewDidLoad() {
        super.viewDidLoad()
        collegeTextField.text = college.name
        locationTextField.text = college.location
        numberOfStudentsTextField.text = String(college.numberOfStudents)
        imageView.image = college.image
        webUrlTextfield.text = college.webUrl
}
 
    @IBAction func tappedOnSaveButton(sender: AnyObject) {
        college.name = collegeTextField.text!
        college.location = locationTextField.text!
        college.numberOfStudents = Int(numberOfStudentsTextField.text!)!
        college.webUrl = webUrlTextfield.text!
    }
    
    
    @IBAction func tappedOnWebPageButton(sender: AnyObject) {
        let url = NSURL(string: college.webUrl)
        let svc = SFSafariViewController(URL: url!)
        svc.delegate = self
        self.presentViewController(svc, animated: true, completion: nil)
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

  
   
    }

    
