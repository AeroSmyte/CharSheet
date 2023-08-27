//
//  ListViewModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 8/13/23.
//

import Foundation

class CharacterListViewModel : ObservableObject {
    
    @Published var characters : [Character] = []
    @Published var searchText: String = ""
    
    var filteredCharacters: [Character] {
        guard !searchText.isEmpty else { return characters }
        
        return characters.filter { char in
            char.characterName.lowercased().contains(searchText.lowercased())
        }
    }
    
    init() {
        getCharacters()
    }
    
    func getCharacters() {
        let newCharacters = [Character(gameType: .FantasyStandard, characterName: "Baron Blueswift", level: 6, hitPoints: 56, characterType: .Cleric, URL: "https://www.dndbeyond.com/characters/29683409"),
        Character(gameType: .PBtA, characterName: "Queza Uovemolo", level: 15, hitPoints: 126, characterType: .Druid, URL: "https://www.dndbeyond.com/characters/99734931"),
        Character(gameType: .FantasyStandard, characterName: "Briarwynn Thuneduk", level: 7, hitPoints: 73, characterType: .Druid, URL: "https://www.dndbeyond.com/characters/93087064"),
        Character(gameType: .FantasyStandard,characterName: "Anselm Khumaal", level: 9, hitPoints: 98, characterType: .Bard, URL: "https://www.dndbeyond.com/characters/88897953")
                             ]
        
        characters.append(contentsOf: newCharacters)
    }
    
    func addCharacter(gameType: GameType,
                      characterName: String,
                      level: Int,
                      hitPoints: Int,
                      characterClass: characterType,
                      URL: String) {
        let newChar = Character(gameType: gameType, characterName: characterName, level: level, hitPoints: hitPoints, characterType: characterClass, URL: URL)
        characters.append(newChar)
    }
    
    func deleteCharacter(indexSet: IndexSet) {
        characters.remove(atOffsets: indexSet)
    }
    
    func moveCharacter(from: IndexSet, to: Int) {
        characters.move(fromOffsets: from, toOffset: to)
    }
}

