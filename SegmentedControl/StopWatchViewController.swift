//
//  StopWatchViewController.swift
//  SegmentedControl
//
//  Created by Astra on 25/6/22.
//

import UIKit

class StopWatchViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var timePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timePicker.dataSource = self
        timePicker.delegate = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 60
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let result = "\(row)"
        
        return result
    }
}


