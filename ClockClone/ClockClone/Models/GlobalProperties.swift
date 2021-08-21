//
//  GlobalProperties.swift
//  ClockClone
//
//  Created by Logan Melton on 21/8/21.
//

import Foundation

struct GlobalProperties {
  enum Days {
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday
  }
  
  let timer = Timer()
  
  let now = Date()
}
