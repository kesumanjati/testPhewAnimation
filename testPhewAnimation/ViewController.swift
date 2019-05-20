//
//  ViewController.swift
//  testPhewAnimation
//
//  Created by Galuh Kesumanjati on 18/05/19.
//  Copyright © 2019 ADa team 07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gifAnimation: UIImageView!
    

    
    @IBAction func btnClick(_ sender: Any) {
        performSegue( withIdentifier: "segueToHowTo", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var imageName = ["phew1.png", "phew2.png", "phew3.png", "phew4.png", "phew5.png", "phew6.png", "phew7.png", "phew8.png"]
        var images = [UIImage]()
        for i in 0..<imageName.count {
            images.append(UIImage(named: imageName[i])!)
            
        }
        gifAnimation.animationImages = images
        gifAnimation.animationDuration = 1.5
        gifAnimation.startAnimating()
        
 
            
    }


    

}

