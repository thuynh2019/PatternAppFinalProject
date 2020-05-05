//
//  FifthViewController.swift
//  PatternAppFinalProject
//
//  Created by Ty Huynh on 5/2/20.
//  Copyright © 2020 Ty Huynh. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var gramsLabel: UILabel!
    
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    
    
    var herbs = ["Acerola", "Achiote", "Agrimony"]
    var gender = ["Male", "Female"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return herbs[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return herbs.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row:Int, inComponent component: Int){
        if pickerView == pickerView {
            self.text1.text = self.herbs[row]
            self.pickerView.isHidden = true
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == self.text1){
            self.pickerView.isHidden = false
            textField.endEditing(true)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        let numberOne = Int(text3.text!)
        let numberTwo = Int(text4.text!)
        let solutionVariable = numberOne! + numberTwo!
        testLabel.text = String(solutionVariable)
        gramsLabel.text = "grams per day"
    }
    
    var stringVariable = String.self
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
