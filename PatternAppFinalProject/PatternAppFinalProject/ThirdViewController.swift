//
//  ThirdViewController.swift
//  PatternAppFinalProject
//
//  Created by Ty Huynh on 5/2/20.
//  Copyright © 2020 Ty Huynh. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    @IBAction func buttonOne(_ sender: Any) {
        labelOne.text = "x"
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        labelTwo.text = "x"
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        labelThree.text = "x"
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
