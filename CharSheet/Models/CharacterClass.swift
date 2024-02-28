//
//  CharacterClass.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/24/24.
//

import Foundation

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
  case monk = "Monk"
  case none = "None"
}
