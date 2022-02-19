//
//  File.swift
//  
//
//  Created by Daniel Prastiwa on 18/02/22.
//

import Foundation

extension Dictionary {
  public func percentEscaped() -> String {
    return map { (key, value) in
      let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
      let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
      return escapedKey + "=" + escapedValue
    }.joined(separator: "&")
  }
}

extension CharacterSet {
  public static let urlQueryValueAllowed: CharacterSet = {
    let generalDelimitersToEncode = ":#[]@"
    let subDelimitersToEncode = "!$&'()*+,;="
    
    var allowed = CharacterSet.urlQueryAllowed
    allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
    return allowed
  }()
}
