//
//  College.swift
//  College Profile Builder #1
//
//  Created by Student on 1/26/16.
//  Copyright © 2016 The Coolest Guy Around. All rights reserved.
//

import UIKit

class College: UIViewController {
    var name = ""
    var location = ""
    var numberOfStudents = 0
    var image = UIImage(named: "Default")

    override func viewDidLoad() {
        super.viewDidLoad()
}
    convenience init(name: String, location: String, numberOfStudents: Int, image: UIImage) {
        self.init()
        self.name = name
        self.location = location
        self.numberOfStudents = numberOfStudents
        self.image = image
    }
    convenience init(name: String) {
        self.init()
        self.name = name
    }


}
