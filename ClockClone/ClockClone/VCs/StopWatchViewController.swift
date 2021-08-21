//
//  StopWatchViewController.swift
//  ClockClone
//
//  Created by Logan Melton on 21/8/15.
//

import UIKit

class StopWatchViewController: UIViewController {
  
  let stopWatch = StopWatch()
  
  private var stopWatchTimeLabel: UILabel = {
    let stopWatchTimeLabel = UILabel()
    stopWatchTimeLabel.text = "00:00.00"
    stopWatchTimeLabel.font = UIFont(name: "HelveticaNeue-Light", size: 70)
    stopWatchTimeLabel.backgroundColor = .green
    return stopWatchTimeLabel
  }()
  
  private var lapResetButton: UIButton = {
    let lapResetButton = UIButton()
    lapResetButton.setTitle("Lap", for: .normal)
    lapResetButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 16)
    lapResetButton.backgroundColor = .blue
    return lapResetButton
  }()
  
  private var startCancelButton: UIButton = {
    let startCancelButton = UIButton()
    startCancelButton.setTitle("Start", for: .normal)
    startCancelButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 16)
    startCancelButton.backgroundColor = .blue
    return startCancelButton
  }()
  
  private var lapList: UITableView = {
    let lapList = UITableView()
    return lapList
  }()

    override func viewDidLoad() {
        super.viewDidLoad()

      // Remove NavigationBar from view
      navigationController?.isNavigationBarHidden = true

      stopWatchTimeLabel.frame = CGRect(x: 0,
                                        y: view.frame.height / 4,
                                        width: view.frame.width,
                                        height: 80)
      stopWatchTimeLabel.textAlignment = .center
      view.addSubview(stopWatchTimeLabel)
      
      lapResetButton.frame = CGRect(x: 20,
                                    y: view.frame.height / 2,
                                    width: 70,
                                    height: 70)
      lapResetButton.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
      lapResetButton.layer.cornerRadius = 0.5 * lapResetButton.bounds.size.width
      lapResetButton.addTarget(self, action: #selector(poop), for: .touchUpInside)
      view.addSubview(lapResetButton)
      
      startCancelButton.frame = CGRect(x: view.frame.width - 90,
                                   y: view.frame.height / 2,
                                   width: 70,
                                   height: 70)
      startCancelButton.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
      startCancelButton.layer.cornerRadius = 0.5 * startCancelButton.bounds.size.width
      startCancelButton.addTarget(self, action: #selector(poop2), for: .touchUpInside)
      view.addSubview(startCancelButton)
      
      lapList.frame = CGRect(x: 0,
                             y: lapResetButton.frame.maxY + 20,
                             width: view.frame.width,
                             height: view.frame.maxY)
      lapList.backgroundColor = .cyan
      view.addSubview(lapList)
      
    }
  
  @objc func poop() {
    print("poop")
  }
  
  @objc func poop2() {
    print("Still pooping")
  }

}
