//
//  SelfCareViewController.swift
//  kwkproject
//
//  Created by Dina Cazun-Moreno on 7/21/21.
//

import UIKit

class SelfCareViewController: UIViewController {
    @IBOutlet var selfCareLabel: UILabel!
    
    @IBOutlet var drinkWater: UITextField!
    @IBOutlet var drinkWaterText: UITextView!
    
    @IBOutlet var goOutside: UITextField!
    @IBOutlet var goOutsideText: UITextView!
    
    @IBOutlet var treatYourself: UITextField!
    @IBOutlet var treatYourselfText: UITextView!
    
    @IBOutlet var screenTime: UITextField!
    @IBOutlet var screenTimeText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
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
