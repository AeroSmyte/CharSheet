//
//  CharacterModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import Combine
import SwiftUI

enum characterType : String, CaseIterable, Codable {
    case Bard = "Bard"
    case Rogue = "Rogue"
    case Barbarian = "Barbarian"
    case Cleric = "Cleric"
    case Wizard = "Wizard"
    case Paladin = "Paladin"
    case Ranger = "Ranger"
    case Sorceror = "Sorceror"
    case Druid = "Druid"
    case Warlock = "Warlock"
    case None = "None"
}

enum gameType: Codable {
    case FantasyStandard, PBtA
}

struct Character : Identifiable, Codable {
    var gameType : gameType
    var characterName : String
    var level : Int
    var hitPoints : Int
    var characterType : characterType
    var id = UUID().uuidString
    var URL : String?
}

