//
//  CharacterModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import Combine
import SwiftUI

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


