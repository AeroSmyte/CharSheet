//
//  CharacterModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import Foundation
import SwiftUI

enum CharacterClass : String {
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
}

enum GameType {
    case FantasyStandard, PBtA
}

struct Character : Identifiable {
    var gameType : GameType
    var username : String
    var characterName : String
    var level : Int
    var CharacterClass : CharacterClass
    var id = UUID()
    var characterIcon : String
}

struct CharList {
    static let tenCharacters = [
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Baron Blueswift", level: 6, CharacterClass: .Cleric, characterIcon: "cleric-icon"),
        Character(gameType: .PBtA, username: "blackgirlmage", characterName: "Queza Uovemolo", level: 15, CharacterClass: .Druid, characterIcon: "druid-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Briarwynn Thuneduk", level: 7, CharacterClass: .Druid, characterIcon: "druid-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Anselm Khumaal", level: 9, CharacterClass: .Bard, characterIcon: "bard-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Lucia Cenwood", level: 5, CharacterClass: .Rogue, characterIcon: "rogue-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Azura Mahanti", level: 13, CharacterClass: .Warlock, characterIcon: "warlock-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Maro Almasi", level: 9, CharacterClass: .Barbarian, characterIcon: "barbarian-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Fang 'N Cheek", level: 10, CharacterClass: .Ranger, characterIcon: "ranger-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Thiela Obsedaat", level: 18, CharacterClass: .Wizard, characterIcon: "wizard-icon"),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Quoti Quickfoot", level: 6, CharacterClass: .Paladin, characterIcon: "paladin-icon"),
    ]
}
