//
//  KipaLogger.swift
//  
//
//  Created by Daniel Prastiwa on 19/02/22.
//

import Foundation

public struct Shouter {
  public static func debug(_ key: String, value: Any) {
    print("🔍 \(key): \(value)")
  }
}
