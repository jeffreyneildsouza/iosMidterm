//
//  ViewController.swift
//  Midterm-1
//
//  Created by Jeffrey Neil Dsouza on 2019-11-06.
//  Copyright © 2019 JeffreyNeilDsouza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let message = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
    please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop."
    """
    @IBOutlet weak var datepicker: UIDatePicker!
    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var AlertController: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Question 1 & 2
        //modifying the width and height so the text can be seen
        lbl1.frame = CGRect(x: 0, y: 0, width: 300, height: 21)
        lbl1.numberOfLines = 5
        lbl1.attributedText = NSAttributedString(html:"<font color=\"red\">Jeffrey Dsouza.</font><br><font color=\"blue\">This is the 2nd line.</font><br><font color=\"green\">This is the 3rd line.</font><br><font color=\"yellow\">This is the 4th line. This is the 5th line.</font>")
        
        //question 3
        lbl2.text = message
        lbl2.lineBreakMode = .byWordWrapping //in versions below swift 3 (messageLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping)
        lbl2.numberOfLines = 0 //To write any number of lines within a label scope
        lbl2.textAlignment = .center
        lbl2.textColor = UIColor.black
        lbl2.font = lbl2.font.withSize(12)
        lbl2.sizeToFit()
        
        //question 5
        datepicker.datePickerMode = UIDatePicker.Mode.dateAndTime;
        datepicker.minimumDate = Calendar.current.date(byAdding: .month, value: -2, to: Date());
        datepicker.maximumDate = Calendar.current.date(byAdding: .month, value: 2, to: Date())
           
     }
    
    
    //question 9
    @IBAction func AlertController(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Hello", message: "Welcome to the world of IOS", preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "Add new text"
            textField.isSecureTextEntry = true
        }
        let confirmAction = UIAlertAction(title: "OK", style: .default) { [weak alertController] _ in
            guard let alertController = alertController, let textField = alertController.textFields?.first else { return }
        }
        alertController.addAction(confirmAction)
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func SliderView(_ sender: UIButton) {
        performSegue(withIdentifier: "toSlider", sender: self)
    }
    
    
    
    
   
    
    
    
    
            

}
// Question 1 & 2
extension NSAttributedString {
        convenience init?(html: String) {
        guard let data = html.data(using: String.Encoding.unicode, allowLossyConversion: false) else {
                    return nil
            }
        guard let attributedString = try? NSAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) else {
                    return nil
            }
                self.init(attributedString: attributedString)
            }
}
