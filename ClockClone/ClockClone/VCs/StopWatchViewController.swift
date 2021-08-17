//
//  StopWatchViewController.swift
//  ClockClone
//
//  Created by Logan Melton on 21/8/15.
//

import UIKit

class StopWatchViewController: UIViewController {
  
  private var stopWatchTimeLabel: UILabel = {
    let stopWatchTimeLabel = UILabel()
    stopWatchTimeLabel.text = "00:00.00"
    stopWatchTimeLabel.font = UIFont(name: "Helvetica", size: 40)
    return stopWatchTimeLabel
  }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      navigationController?.isNavigationBarHidden = true
      
      stopWatchTimeLabel.frame = CGRect(x: 30,
                                        y: view.frame.height / 3,
                                        width: view.frame.width - 30,
                                        height: 50)
      view.addSubview(stopWatchTimeLabel)
      
    }

}
