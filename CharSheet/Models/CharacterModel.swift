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
    case None = "None"
}

enum GameType {
    case FantasyStandard, PBtA
}

struct Character : Identifiable {
    var gameType : GameType
    var username : String
    var characterName : String
    var level : Int
    var hitPoints : Int
    var CharacterClass : CharacterClass
    var id = UUID()
    var characterIcon : String
    var URL : URL
}

struct CharList {
    static let tenCharacters = [
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Baron Blueswift", level: 6, hitPoints: 56, CharacterClass: .Cleric, characterIcon: "cleric-icon", URL: URL(string: "https://www.dndbeyond.com/characters/29683409")!),
        Character(gameType: .PBtA, username: "blackgirlmage", characterName: "Queza Uovemolo", level: 15, hitPoints: 126, CharacterClass: .Druid, characterIcon: "druid-icon", URL: URL(string: "https://www.dndbeyond.com/characters/99734931")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Briarwynn Thuneduk", level: 7, hitPoints: 73, CharacterClass: .Druid, characterIcon: "druid-icon", URL: URL(string: "https://www.dndbeyond.com/characters/93087064")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Anselm Khumaal", level: 9, hitPoints: 98, CharacterClass: .Bard, characterIcon: "bard-icon", URL: URL(string: "https://www.dndbeyond.com/characters/88897953")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Lucia Cenwood", level: 5, hitPoints: 56, CharacterClass: .Rogue, characterIcon: "rogue-icon", URL: URL(string: "https://www.dndbeyond.com/characters/88399204")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Azura Mahanti", level: 13, hitPoints: 68, CharacterClass: .Warlock, characterIcon: "warlock-icon", URL: URL(string: "https://www.dndbeyond.com/characters/87895565")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Maro Almasi", level: 9, hitPoints: 103, CharacterClass: .Barbarian, characterIcon: "barbarian-icon", URL: URL(string: "https://www.dndbeyond.com/characters/87838777")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Fang 'N Cheek", level: 10, hitPoints: 85, CharacterClass: .Ranger, characterIcon: "ranger-icon", URL: URL(string: "https://www.dndbeyond.com/characters/86322573")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Thiela Obsedaat", level: 18, hitPoints: 112, CharacterClass: .Wizard, characterIcon: "wizard-icon", URL: URL(string: "https://www.dndbeyond.com/characters/84713444")!),
        Character(gameType: .FantasyStandard, username: "blackgirlmage", characterName: "Quoti Quickfoot", level: 6, hitPoints: 66, CharacterClass: .Paladin, characterIcon: "paladin-icon", URL: URL(string: "https://www.dndbeyond.com/characters/75747584")!),
    ]
}
