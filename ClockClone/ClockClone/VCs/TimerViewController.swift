//
//  TimerViewController.swift
//  ClockClone
//
//  Created by Logan Melton on 21/8/15.
//

import UIKit

class TimerViewController: UIViewController, UIPickerViewDelegate {
  
  let hours   = [0 ..< 24]
  let minutes = [0 ..< 59]
  let seconds = [0 ..< 59]
  var pickerComponents = [[Range<Int>]]()
  
  let picker = UIPickerView()
  
  private var cancelButton: UIButton = {
    let cancelButton  = UIButton()
    cancelButton.setTitle("Cancel", for: .normal)
    cancelButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light",
                                           size: 16)
    cancelButton.tintColor = .black
    return cancelButton
  }()
  
  private var startPauseButton: UIButton = {
    let startPauseButton = UIButton()
    let selected = Bool()
    startPauseButton.setTitle("Start", for: .normal)
    startPauseButton.setTitle("Pause", for: .selected)
    startPauseButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light",
                                               size: 16)
    return startPauseButton
  }()
  
  private var endTimerSoundButton: UIButton = {
    let endTimerSoundButton = UIButton()
    endTimerSoundButton.setTitle("When Timer Ends", for: .normal)
    endTimerSoundButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light",
                                                  size: 20)
    endTimerSoundButton.contentHorizontalAlignment = .left
    endTimerSoundButton.contentEdgeInsets = UIEdgeInsets(top: .zero,
                                                         left: 10,
                                                         bottom: .zero,
                                                         right: .zero)
    return endTimerSoundButton
  }()
    
    override func viewDidLoad() {
      super.viewDidLoad()
      
      picker.dataSource = self
      picker.delegate = self
      
      pickerComponents = [hours, minutes, seconds]
      
      picker.frame = CGRect(x: 0,
                             y: view.frame.height / 16 - 60,
                             width: view.frame.width,
                             height: view.frame.height / 2)
      picker.backgroundColor = .systemTeal
      view.addSubview(picker)
      
      cancelButton.frame = CGRect(x: 20,
                                  y: picker.frame.maxY + 20,
                                  width: 70,
                                  height: 70)
      cancelButton.backgroundColor = .red
      cancelButton.layer.cornerRadius = 0.5 * cancelButton.bounds.size.width
      cancelButton.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
      view.addSubview(cancelButton)
      
      startPauseButton.frame = CGRect(x: view.frame.width - 90,
                                  y: picker.frame.maxY + 20,
                                  width: 70,
                                  height: 70)
      startPauseButton.backgroundColor = .red
      startPauseButton.layer.cornerRadius = 0.5 * startPauseButton.bounds.size.width
      startPauseButton.addTarget(self, action: #selector(startPauseButtonPressed), for: .touchDown)
      view.addSubview(startPauseButton)
      
      endTimerSoundButton.frame = CGRect(x: 20,
                                         y: cancelButton.frame.maxY + 50,
                                         width: view.frame.width - 40,
                                         height: 40)
      endTimerSoundButton.layer.cornerRadius = 5
      endTimerSoundButton.backgroundColor = .brown
      endTimerSoundButton.addTarget(self, action: #selector(chooseSound), for: .touchUpInside)
      view.addSubview(endTimerSoundButton)
    
      
    }
  
  @objc func cancelButtonPressed() {
    print("Cancel the Timer")
  }
  
  @objc func startPauseButtonPressed() {
    print("If timer is inactive, starts the timer. If timer is running, pauses the current timer.")
  }
  
  @objc func chooseSound() {
    print("Opens sound library to choose sounds.")
  }
  
  
  
  
}

extension TimerViewController: UIPickerViewDataSource {
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return pickerComponents.count
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    switch component {
      case 0:
        return 24
      case 1:
        return 60
      case 2:
        return 60
      default:
        return 0
    }
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return "\(row)"
    // This switch statement adds the section labels to each of the rows, not ideal.
//    switch component {
//      case 0:
//        return "\(row) Hours"
//      case 1:
//        return "\(row) Mins"
//      case 2:
//        return "\(row) Secs"
//      default:
//        return ""
//    }
  }
  
}

//MARK: - Source = https://github.com/luismachado/Swift/blob/master/PickerLabels.swift
// Attempting to add fixed labels to each component rather than to each row in each component.
extension UIPickerView {
  
  func setPickerLabels(labels: [Int:UILabel], containedView: UIView) { // [component number:label]
    
    let fontSize:CGFloat = 20
    let labelWidth:CGFloat = containedView.bounds.width / CGFloat(self.numberOfComponents)
    let x:CGFloat = self.frame.origin.x
    let y:CGFloat = (self.frame.size.height / 2) - (fontSize / 2)
    
    for i in 0...self.numberOfComponents {
      
      if let label = labels[i] {
        
        if self.subviews.contains(label) {
          label.removeFromSuperview()
        }
        
        label.frame = CGRect(x: x + labelWidth * CGFloat(i), y: y, width: labelWidth, height: fontSize)
        label.font = UIFont.boldSystemFont(ofSize: fontSize)
        label.backgroundColor = .clear
        label.textAlignment = NSTextAlignment.center
        
        self.addSubview(label)
      }
    }
  }
}
