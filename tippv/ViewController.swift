//
//  ViewController.swift
//  tippv
//
//  Created by Taku Tran on 5/12/17.
//  Copyright © 2017 Taku Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billField: UITextField!
    
    @IBOutlet var billText: UILabel!
    
    @IBOutlet var totalText: UILabel!
    
    @IBOutlet var segmentPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        segmentPercent.selectedSegmentIndex = defaults.integer(forKey: "DefaultPercent")
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

   

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let percentage = [0.1,0.2,0.3]
        let tip = bill * percentage[segmentPercent.selectedSegmentIndex]
        let total = bill + tip
        
        billText.text = String(format: "$%.2f",tip)
        totalText.text = String(format: "$%.2f",total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
}

