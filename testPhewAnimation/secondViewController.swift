//
//  secondViewController.swift
//  Phew
//
//  Created by Galuh Kesumanjati on 19/05/19.
//  Copyright © 2019 ADa team 07. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var imagePinchKiri2: UIImageView!
    
    @IBOutlet weak var imagePinchKanan2: UIImageView!
    @IBOutlet weak var buttonPlay2: UIButton!

    @IBAction func buttonPlay2(_ sender: UIButton) {
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonPlay2.layer.cornerRadius = buttonPlay2.bounds.size.height/2
        
        self.imagePinchKiri2.frame.origin.x = 20
        self.imagePinchKiri2.frame.origin.y = 340
        self.imagePinchKanan2.frame.origin.x = 300
        self.imagePinchKanan2.frame.origin.y = 340
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1) {
            self.imagePinchKiri2.center.x = 130
            self.imagePinchKanan2.center.x = 280
            // Do any additional setup after loading the view.
            
        }
    }

}

