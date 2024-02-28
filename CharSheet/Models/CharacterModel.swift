//
//  CharacterModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import Combine
import SwiftUI
import SwiftData

@Model
class Character : Identifiable, Codable {
  
  enum CodingKeys: CodingKey {
      case gameType, characterName, level, currentHitPoints,totalHitPoints,dateAdded,characterClass, id, URL, status
    }
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.gameType, forKey: .gameType)
    try container.encode(self.characterName, forKey: .characterName)
    try container.encode(self.level, forKey: .level)
    try container.encode(self.currentHitPoints, forKey: .currentHitPoints)
    try container.encode(self.totalHitPoints, forKey: .totalHitPoints)
    try container.encode(self.dateAdded, forKey: .dateAdded)
    try container.encode(self.characterClass, forKey: .characterClass)
    try container.encode(self.id, forKey: .id)
    try container.encode(self.URL, forKey: .URL)
    try container.encode(self.status, forKey: .status)
  }
  
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.gameType = try container.decode(GameType.self, forKey: .gameType)
    self.characterName = try container.decode(String.self, forKey: .characterName)
    self.level = try container.decode(Int.self, forKey: .level)
    self.currentHitPoints = try container.decode(Int.self, forKey: .currentHitPoints)
    self.totalHitPoints = try container.decode(Int.self, forKey: .totalHitPoints)
    self.dateAdded = try container.decode(Date.self, forKey: .dateAdded)
    self.characterClass = try container.decode(CharacterClass.self, forKey: .characterClass)
    self.id = try container.decode(String.self, forKey: .id)
    self.URL = try container.decode(String.self, forKey: .URL)
    self.status = try container.decode(Status.self, forKey: .status)
  }
  
  var icon: Image {
    switch characterClass {
    case .bard:
      Image(systemName: "guitars.fill")
    case .rogue:
      Image(systemName: "touchid")
    case .barbarian:
      Image(systemName: "figure.strengthtraining.traditional")
    case .cleric:
      Image(systemName: "bolt.heart")
    case .fighter:
      Image(systemName: "figure.fencing")
    case .wizard:
      Image(systemName: "book.closed")
    case .paladin:
      Image(systemName: "checkerboard.shield")
    case .ranger:
      Image(systemName: "figure.archery")
    case .sorceror:
      Image(systemName: "flame.fill")
    case .druid:
      Image(systemName: "leaf")
    case .warlock:
      Image(systemName: "moon.phase")
    case .monk:
      Image(systemName: "person.and.background.dotted")
    case .none:
      Image(systemName: "person.circle")
    }
  }
  
  var gameType : GameType
  var characterName : String
  var level : Int
  var currentHitPoints : Int
  var totalHitPoints : Int
  var dateAdded : Date
  var characterClass : CharacterClass
  var id = UUID().uuidString
  var URL : String
  var status: Status
  
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
