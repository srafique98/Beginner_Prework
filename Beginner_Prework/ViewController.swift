//
//  ViewController.swift
//  Beginner_Prework
//
//  Created by Shan Rafique on 8/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var HelloWorldText: UILabel! //Interface Builder
    @IBOutlet var ChangeBackGroundView: UIView!
    @IBOutlet weak var NewTextField: UITextField!
    
    var OriginalText: String!
    var OriginalBackGroundColor: UIColor!
    var OriginalTextColor: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        OriginalText = HelloWorldText.text
        OriginalBackGroundColor = view.backgroundColor
        OriginalTextColor = HelloWorldText.textColor
    }
    
    @IBAction func ButtonClick(_ sender: Any) {
        HelloWorldText.textColor = UIColor.orange
    }
    
    @IBAction func ChangeBackGroundColor(_ sender: Any) {
        ChangeBackGroundView.backgroundColor = UIColor.clear
    }
    
    
    @IBAction func GoodByeText(_ sender: Any) {
        HelloWorldText.text = "Goodbye 👋"
    }
    
    @IBAction func ChangeText(_ sender: Any) {
        if NewTextField.text == "" {
            HelloWorldText.text = OriginalText
            view.backgroundColor = OriginalBackGroundColor
            HelloWorldText.textColor = OriginalTextColor
            
        }
        else {
        HelloWorldText.text = NewTextField.text
        NewTextField.text = ""
        view.endEditing(true)
        }
    }
    
}

