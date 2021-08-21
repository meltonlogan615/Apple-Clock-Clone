//
//  AlarmsViewController.swift
//  ClockClone
//
//  Created by Logan Melton on 21/8/15.
//

import UIKit

class AlarmsViewController: UICollectionViewController {
  
  let alarmCell = UICollectionViewCell()
  let alarms = [Alarm]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Alarm"
    navigationController?.isNavigationBarHidden = false
    navigationController?.navigationBar.prefersLargeTitles = true
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createNewAlarm))
    
    navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editAlarms))
  }
  
  @objc func createNewAlarm() {
    print("BEEP")
  }
  @objc func editAlarms() {
    print("BOOP")
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlarmCell", for: indexPath)
    cell.frame = CGRect(x: 10, y: 20, width: view.frame.width - 20, height: 80)
    cell.backgroundColor = .orange
    cell.largeContentTitle = "Poop"
    cell.backgroundColor = .black
    return cell
  }
  
  
  
  
}
