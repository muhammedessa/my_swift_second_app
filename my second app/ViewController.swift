//
//  ViewController.swift
//  my second app
//
//  Created by Muhammed Essa on 1/17/20.
//  Copyright © 2020 Muhammed Essa. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var muhammedEssaLabel: UILabel!
    
    @IBOutlet weak var textFieldM: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldM.becomeFirstResponder()
        textFieldM.delegate = self
        // Do any additional setup after loading the view.
  //      muhammedEssaLabel.text = "Khalid Samir"
    }

    @IBAction func clickMe(_ sender: Any) {
        muhammedEssaLabel.text = "Yes !  \( textFieldM.text! )  "
        textFieldM.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldM.resignFirstResponder()
        return false
    }
    
}

