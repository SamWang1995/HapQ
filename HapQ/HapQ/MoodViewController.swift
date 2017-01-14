//
//  MoodViewController.swift
//  HapQ
//
//  Created by Samuel Wang on 1/14/17.
//  Copyright © 2017 Samuel Wang. All rights reserved.
//

import UIKit

class MoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBOutlet weak var texr: UILabel!
    
    @IBAction func terrible(_ sender: Any) {
        texr.text = "terrible"
    }
    
    @IBAction func submit(_ sender: UIButton) {
        File.shared.moodStr = texr.text!
        performSegue(withIdentifier: "setMood", sender: self)
    }
    
    @IBAction func sad(_ sender: Any) {
        texr.text = "sad"
    }
    
    
    @IBAction func neutral(_ sender: Any) {
        texr.text = "neutral"
    }
    
    @IBAction func happy(_ sender: Any) {
        texr.text = "happy"
    }
    
    @IBAction func ecstatic(_ sender: Any) {
        texr.text = "ecstatic"
    }
    
    
    
    
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
