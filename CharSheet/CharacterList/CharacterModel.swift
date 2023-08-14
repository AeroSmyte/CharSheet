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
    
    // tells the world when values here change
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

//struct CharList {
//    static let tenCharacters = [
//        Character(gameType: .FantasyStandard, characterName: "Baron Blueswift", level: 6, hitPoints: 56, CharacterClass: .Cleric, URL: "https://www.dndbeyond.com/characters/29683409"),
//        Character(gameType: .PBtA, characterName: "Queza Uovemolo", level: 15, hitPoints: 126, CharacterClass: .Druid, URL: "https://www.dndbeyond.com/characters/99734931"),
//        Character(gameType: .FantasyStandard, characterName: "Briarwynn Thuneduk", level: 7, hitPoints: 73, CharacterClass: .Druid, URL: "https://www.dndbeyond.com/characters/93087064"),
//        Character(gameType: .FantasyStandard,characterName: "Anselm Khumaal", level: 9, hitPoints: 98, CharacterClass: .Bard, URL: "https://www.dndbeyond.com/characters/88897953"),
//        Character(gameType: .FantasyStandard, characterName: "Lucia Cenwood", level: 5, hitPoints: 56, CharacterClass: .Rogue, URL: "https://www.dndbeyond.com/characters/88399204"),
//        Character(gameType: .FantasyStandard, characterName: "Azura Mahanti", level: 13, hitPoints: 68, CharacterClass: .Warlock, URL: "https://www.dndbeyond.com/characters/87895565"),
//        Character(gameType: .FantasyStandard, characterName: "Maro Almasi", level: 9, hitPoints: 103, CharacterClass: .Barbarian, URL: "https://www.dndbeyond.com/characters/87838777"),
//        Character(gameType: .FantasyStandard, characterName: "Fang 'N Cheek", level: 10, hitPoints: 85, CharacterClass: .Ranger, URL: "https://www.dndbeyond.com/characters/86322573"),
//        Character(gameType: .FantasyStandard, characterName: "Thiela Obsedaat", level: 18, hitPoints: 112, CharacterClass: .Wizard, URL: "https://www.dndbeyond.com/characters/84713444"),
//        Character(gameType: .FantasyStandard, characterName: "Quoti Quickfoot", level: 6, hitPoints: 66, CharacterClass: .Paladin, URL: "https://www.dndbeyond.com/characters/75747584"),
//    ]
//}
