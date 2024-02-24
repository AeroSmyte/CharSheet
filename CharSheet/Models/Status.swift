//
//  Status.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/24/24.
//

import Foundation

enum Status: Int, Codable, CaseIterable, Identifiable {
  case active, inactive
  var id: Self {
    self
  }
  
  var descr: String {
    switch self {
    case .active:
      return "Active"
    case .inactive:
      return "Inactive"
    }
  }
}
