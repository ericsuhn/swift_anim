//
//  ViewController.swift
//  animation
//
//  Created by Alireza Moghaddam on 2019-05-09.
//  Copyright © 2019 Alireza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imgBox: UIImageView!
    
    @IBOutlet weak var xCoordinateInput: UITextField!
    @IBOutlet weak var yCoordinateInput: UITextField!
    @IBOutlet weak var playerImgBox: UIImageView!
    
    @IBOutlet weak var btn: UIButton!
    
    var iterator = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let timer = Timer.scheduledTimer(timeInterval: 0.33, target: self, selector: #selector(updateImage), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func walkBtnAction(_ sender: Any) {
        let timer = Timer.scheduledTimer(timeInterval: 0.88, target: self, selector: #selector(updateImage(timer:)), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnAction(_ sender: Any) {
        //updateImage()
        let timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(updateImage(timer:)), userInfo: nil, repeats: true)
    }
    
    
    
    @objc func updateImage(timer: Timer) {
        
    playerImgBox.image = UIImage(named: "frame-\(iterator).png")
        
        print("frame-\(iterator).png")
        
    iterator += 1
    
        if (iterator == 5){
            iterator = 1
        }
        
        
        //let userInfo = timer.userInfo as! Dictionary<String, AnyObject>
        //var x:Int = (userInfo["xCoord"] as! Int)
        //Move the image toward right
        print(xCoordinateInput.text!)
        
        //let xVal = (xCoordinateInput.text!)
        //let xval = 20;
        
        var xval : CGFloat? = 20
        
        
        if (playerImgBox.frame.origin.x < xval){
            playerImgBox.frame.origin.x = playerImgBox.frame.origin.x + 20;
            //playerImgBox.frame.origin.y = playerImgBox.frame.origin.y - x
            print(playerImgBox.frame.origin.x)
            print(playerImgBox.frame.origin.y)
        }else{
            timer.invalidate()
        }

    }


}

