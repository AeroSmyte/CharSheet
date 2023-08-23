//
//  CharacterModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import Combine
import SwiftUI

enum CharacterClass : String, CaseIterable {
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
enum GameType {
    case FantasyStandard, PBtA
}

struct Character : Identifiable {
    
    var didChange = PassthroughSubject<Void, Never>()
    
    var gameType : GameType
    var characterName : String
    // var userName
    var level : Int
    var hitPoints : Int
    var CharacterClass : CharacterClass
    var id = UUID().uuidString
    var URL : String? 
}
