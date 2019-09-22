//
//  Mentor.swift
//  MentorBook
//
//  Created by 野崎陽奈子 on 2019/09/21.
//  Copyright © 2019 野崎陽奈子. All rights reserved.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
