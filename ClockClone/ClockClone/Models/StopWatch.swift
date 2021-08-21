//
//  StopWatch.swift
//  ClockClone
//
//  Created by Logan Melton on 21/8/17.
//

import Foundation

struct StopWatch {
  var startTime = Date()
  var lap       : Double = 0
  var laps      = [Double]()
  
  mutating func addLap() {
    laps.append(lap)
  }
  
  mutating func removeAllLaps() {
    laps.removeAll()
  }
}
