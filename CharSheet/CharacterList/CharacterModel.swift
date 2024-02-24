//
//  CharacterModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import Combine
import SwiftUI

enum CharacterClass : String, CaseIterable, Codable {
    case bard = "Bard"
    case rogue = "Rogue"
    case barbarian = "Barbarian"
    case cleric = "Cleric"
    case fighter = "Fighter"
    case wizard = "Wizard"
    case paladin = "Paladin"
    case ranger = "Ranger"
    case sorceror = "Sorceror"
    case druid = "Druid"
    case warlock = "Warlock"
    case none = "None"
}

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

enum GameType: Codable {
    case FantasyStandard, PBtA
}

//struct Character : Identifiable, Codable {
//    var gameType : gameType
//    var characterName : String
//    var level : Int
//    var hitPoints : Int
//    var characterClass : characterClass
//    var id = UUID().uuidString
//    var URL : String = ""
//}

class Character : Identifiable, Codable {
  var gameType : GameType
  var characterName : String
  var level : Int
  var currentHitPoints : Int
  var totalHitPoints : Int
  var dateAdded : Date
  var characterClass : CharacterClass
  var id = UUID().uuidString
  var URL : String
  var status: Status = .active
  
  init(gameType: GameType = .FantasyStandard,
       characterName: String,
       level: Int,
       currentHitPoints: Int,
       totalHitPoints: Int,
       dateAdded: Date = Date.now,
       characterClass: CharacterClass = .barbarian,
       id: String = UUID().uuidString,
       URL: String = "",
       status: Status = .active) {
    self.gameType = gameType
    self.characterName = characterName
    self.level = level
    self.currentHitPoints = currentHitPoints
    self.totalHitPoints = totalHitPoints
    self.dateAdded = dateAdded
    self.characterClass = characterClass
    self.id = id
    self.URL = URL
    self.status = status
  }
  
}

