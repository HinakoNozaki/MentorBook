//
//  ViewController.swift
//  MentorBook
//
//  Created by 野崎陽奈子 on 2019/09/21.
//  Copyright © 2019 野崎陽奈子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mentorArray: [Mentor] = []

    @IBOutlet var imageview: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "WebS,WebD"))
        
        setUI()
        // Do any additional setup after loading the view.
    }

    func setUI() {
        imageview.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index = index - 1
        if index < 0{
            index = 0
        }
        setUI()
    }
    
    @IBAction func tugi(){
        index = index + 1
        if index > 2{
            index = 2
        }
        setUI()
    }

}

