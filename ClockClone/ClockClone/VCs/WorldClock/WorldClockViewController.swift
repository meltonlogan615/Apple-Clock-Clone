//
//  ViewController.swift
//  ClockClone
//
//  Created by Logan Melton on 21/8/15.
//

import UIKit

class WorldClockViewController: UICollectionViewController {
  
  var now = Date()
  var worldClocks = [Int]()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.isNavigationBarHidden = false
    navigationController?.navigationBar.prefersLargeTitles = true
    title = "World Clocks"
    collectionView.backgroundColor = .systemYellow
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createNewWorldClock))
    
    // Works on loading, but needs property observer to watch if worldClocks isEmpty and then update accordingly.
    if !worldClocks.isEmpty {
      navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editWorldClocks))
    }
  }
  

  //MARK: - NavBar Actions
  // TODO: Displays list of cities in either a UICollectionView or UITableView
  /*
   - Search bar to filter at the top.
   - Alphabetical Listing.
   - When selected, can attach a contact to it as it's main label. Additional Details for the City, Hrs +/- Users timeZone.
   - On right side, the current time of the selected city.
   */
  @objc func createNewWorldClock() {
    print("poop")
    worldClocks.removeAll()
  }
  
  @objc func editWorldClocks() {
    print("also poop")
  }
  
  //MARK: - CollectionView Standard Methods
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorldClockCell", for: indexPath)
    cell.frame = CGRect(x: 10, y: 0, width: view.frame.width - 20, height: 80)
    cell.backgroundColor = .cyan
    cell.contentMode = .bottomLeft
    return cell
  }
  
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    // options for tapped cell
  }
  
  // TODO: Add gesture recognizers.
  /*
   Swipe from Right to Left = Delete
   Swipe from Left to Right = nil
   */
  
  

  
}

