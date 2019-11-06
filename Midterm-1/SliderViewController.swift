//
//  SliderViewController.swift
//  Midterm-1
//
//  Created by Jeffrey Neil Dsouza on 2019-11-06.
//  Copyright © 2019 JeffreyNeilDsouza. All rights reserved.
//
//Question 10, 6, 11 in this view

import UIKit

class SliderViewController: UIViewController {
    //Question10
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var Slider: UISlider!
    
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Question 6 
        let imageapple = imageView2.image
        let imageandroid = imageView1.image
        let data11:NSData = imageapple!.pngData()! as NSData
        let data12:NSData = imageandroid!.pngData()! as NSData
        if(data11.isEqual(data12)){
            
            lbl3.text = "The images are equal"
        }
        else{
            lbl3.text = "The images are unequal"
        }

        //Question 11
        Slider.minimumValue=0
        Slider.maximumValue=50
        
    }
    @IBAction func Backbtn(_ sender: UIButton) {
        performSegue(withIdentifier: "backToMain", sender: self)
    }
    
}
