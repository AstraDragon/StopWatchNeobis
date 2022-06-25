//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Astra on 24/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func swtchViews(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
            firstView.alpha  = 1
            secondView.alpha = 0
        }
        else
        {
            firstView.alpha = 0
            secondView.alpha = 1
        }
    }
}

