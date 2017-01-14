//
//  ViewController.swift
//  HapQ
//
//  Created by Samuel Wang on 1/13/17.
//  Copyright © 2017 Samuel Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
        
    }
    func timeToMoveOn() {
        self.performSegue(withIdentifier: "toHome", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

