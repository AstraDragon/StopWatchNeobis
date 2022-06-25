//
//  TimerViewController.swift
//  SegmentedControl
//
//  Created by Astra on 25/6/22.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var timerImage: UIImageView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var pauseButton: UIButton!
    
    @IBOutlet weak var startButton: UIButton!
    
    var timer = Timer()
    var isTimeRunning = false
    var counter = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resetButton.isEnabled = false
        pauseButton.isEnabled = false
        startButton.isEnabled = true
    }
    
    @IBAction func resetDidTap(_ sender: Any) {
        timer.invalidate()
        isTimeRunning = false
        counter = 0.0
        
        timerLabel.text = "00:00:00"
        resetButton.isEnabled = false
        pauseButton.isEnabled = false
        startButton.isEnabled = true
    }
    
    @IBAction func pauseDidTap(_ sender: Any) {
        resetButton.isEnabled = true
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        isTimeRunning = false
        timer.invalidate()
    }
    
    @IBAction func startDidTap(_ sender: Any) {
        if !isTimeRunning {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
            isTimeRunning = true
            
            resetButton.isEnabled = true
            pauseButton.isEnabled = true
            startButton.isEnabled = false
        }
    }
    
    //MARK: - Helper methods
    
    @objc func runTimer() {
        counter += 0.1
        // HH:MM:SS
        let flooredCounter = Int(floor(counter))
        let hour = flooredCounter / 3600
        var hourString = "\(hour)"
        if hour < 10 {
            hourString = "0\(hour)"
        }
        
        let minute = (flooredCounter % 3600) / 60
        var minuteString = "\(minute)"
        if minute < 10 {
            minuteString = "0\(minute)"
        }
        
        let second = (flooredCounter % 3600) % 60
        var secondString = "\(second)"
        if second < 10 {
            secondString = "0\(second)"
        }
        
        timerLabel.text = "\(hourString):\(minuteString):\(secondString)"
    }
}
