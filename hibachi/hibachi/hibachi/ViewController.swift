//
//  ViewController.swift
//  hibachi
//
//  Created by Caleb Lee on 1/25/19.
//  Copyright © 2019 WithoutAnyLimit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countdownLabel: UILabel!
    var timeCount = Timer()
    var timeLeft = 3464
    override func viewDidLoad() {
        super.viewDidLoad()
        self.timeCount = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.counter) , userInfo: nil, repeats: true)
       
    }
    @objc func counter() {
        timeLeft -= 1
        self.countdownLabel.text = timeString(time: TimeInterval(timeLeft))
        print(timeLeft)
    }
    func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
   


}

