//
//  Slider.swift
//  Midterm-1
//
//  Created by Jeffrey Neil Dsouza on 2019-11-06.
//  Copyright © 2019 JeffreyNeilDsouza. All rights reserved.
//

import UIKit

class Slider: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Back(_ sender: UIButton) {
        
       dismiss(animated: true, completion:nil)
         }
         
    
    @IBAction func SliderControl(_ sender: UISlider) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
