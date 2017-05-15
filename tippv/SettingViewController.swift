//
//  SettingViewController.swift
//  tippv
//
//  Created by Taku Tran on 5/12/17.
//  Copyright © 2017 Taku Tran. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var defaultSegmentPercent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
            defaultSegmentPercent.selectedSegmentIndex = defaults.integer(forKey: "DefaultPercent")
        
        // Do any additional setup after loading the view.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func Save(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultSegmentPercent.selectedSegmentIndex, forKey: "DefaultPercent")
        defaults.synchronize()
        let alert = UIAlertController(title: "Confirm", message: "Successfully Saved.", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}
