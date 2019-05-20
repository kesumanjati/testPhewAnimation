//
//  thirdViewController.swift
//  Phew
//
//  Created by Galuh Kesumanjati on 19/05/19.
//  Copyright © 2019 ADa team 07. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    @IBOutlet weak var imageJariKiri: UIImageView!
    
    @IBOutlet weak var imageJariKanan: UIImageView!
    
    @IBOutlet weak var imageAcne: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
imageAcne.layer.cornerRadius = imageAcne.bounds.size.height/2
        
        // Do any additional setup after loading the view.
        //gesture pinch
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(sender:)))
        view.addGestureRecognizer(pinch)
    }
    
    @objc func handlePinch(sender: UIPinchGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            
            print(sender.scale )
            if (sender.scale <= 1) {
                if (imageJariKiri.frame.minX < 0) {
                    imageJariKiri.frame = CGRect(x: imageJariKiri.frame.minX + sender.scale*2, y: imageJariKiri.frame.minY, width: imageJariKiri.frame.width, height: imageJariKiri.frame.height)
                    print(imageJariKiri.frame)
                }
                if (imageJariKanan.frame.minX > 215) {
                    imageJariKanan.frame = CGRect(x: imageJariKanan.frame.minX - sender.scale*2, y: imageJariKanan.frame.minY, width: imageJariKanan.frame.width, height: imageJariKanan.frame.height)
                    print(imageJariKanan.frame)
                }
            }else{
                if (imageJariKiri.frame.minX > -53) {
                    imageJariKiri.frame = CGRect(x: imageJariKiri.frame.minX - sender.scale*2, y: imageJariKiri.frame.minY, width: imageJariKiri.frame.width, height: imageJariKiri.frame.height)
                    print(imageJariKiri.frame)
                }
                if (imageJariKanan.frame.minX < 262) {
                    imageJariKanan.frame = CGRect(x: imageJariKanan.frame.minX + sender.scale*2, y: imageJariKanan.frame.minY, width: imageJariKanan.frame.width, height: imageJariKanan.frame.height)
                    print(imageJariKanan.frame)
                }
            }
            
            if sender.scale <= 0.2{
                popAcne()
            }
        }
    }
    
    func popAcne(){
        let popAcneImage = UIImage(named: "pop")
        let popAcneView = UIImageView(image: popAcneImage)
        
        popAcneView.frame = CGRect(x: self.view.frame.width / 2 - popAcneImage!.size.width / 2, y: 380 - popAcneImage!.size.height, width: popAcneImage!.size.width, height: popAcneImage!.size.height)
        
        view.addSubview(popAcneView)
        
        UIView.animate(withDuration: 5, delay: 0, options: .curveEaseOut, animations: {
            popAcneView.transform = CGAffineTransform(scaleX: 3, y: 3)
            popAcneView.transform = CGAffineTransform(translationX: 0, y: 5)
        })
        
        
        
        
        
        imageAcne.alpha = 0
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


