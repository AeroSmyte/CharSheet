//
//  ListViewModel.swift
//  CharSheet
//
//  Created by Lexi McQueen on 8/13/23.
//

import Foundation

class ListViewModel : ObservableObject {
    
    @Published var characters : [Character] = []
    
    init() {
        getCharacters()
    }
    
    func getCharacters() {
        let newCharacters = [Character(gameType: .FantasyStandard, characterName: "Baron Blueswift", level: 6, hitPoints: 56, CharacterClass: .Cleric, URL: "https://www.dndbeyond.com/characters/29683409"),
        Character(gameType: .PBtA, characterName: "Queza Uovemolo", level: 15, hitPoints: 126, CharacterClass: .Druid, URL: "https://www.dndbeyond.com/characters/99734931"),
        Character(gameType: .FantasyStandard, characterName: "Briarwynn Thuneduk", level: 7, hitPoints: 73, CharacterClass: .Druid, URL: "https://www.dndbeyond.com/characters/93087064"),
        Character(gameType: .FantasyStandard,characterName: "Anselm Khumaal", level: 9, hitPoints: 98, CharacterClass: .Bard, URL: "https://www.dndbeyond.com/characters/88897953")
                             ]
        
        characters.append(contentsOf: newCharacters)
    }
    
    func addCharacter(gameType: GameType,
                      characterName: String,
                      level: Int,
                      hitPoints: Int,
                      characterClass: CharacterClass,
                      URL: String) {
        let newChar = Character(gameType: gameType, characterName: characterName, level: level, hitPoints: hitPoints, CharacterClass: characterClass, URL: URL)
        characters.append(newChar)
    }
    
    func deleteCharacter(indexSet: IndexSet) {
        characters.remove(atOffsets: indexSet)
    }
    
    func moveCharacter(from: IndexSet, to: Int) {
        characters.move(fromOffsets: from, toOffset: to)
    }
    
}

// i don't believe in separate accounts, i think it's sneaky and dirty
// i went on a 24 hour trip to disneyland, and that ruined a friendship
// i don't believe in texting arguments, because you're always going to read it wrong and
// i want to meet your family, i feel like if i can't
// you met half of mine and mine is big
// i'll re-evaluate on saturday
// asking about his grandma's lifestyle choices, diabetes and shitm talking about heart problems on her side of the family???

// do you believe in doing the dishes a certain way?
// definitely most likely all my kids will need therapy.
// "really?"
// not because of something we've done, but becuase my sister has bipolar, and if you are
// if i had twins for our first pregnancy, id never have kids again

// not western medicine. if i can do it at home, then i will
// no hospital, it's too
// i think shots right after a birth is wrong
// anyone who's unvaccinated should

// I haven't gotten a flu shot in 4 yeras
// he told me if i had a home birth he'd be mad because it's dangerous, which it is, but so many poeple in the old times did it

// i think we should be able to have guns in houses but they should never know you have a safe
// public school they should not mask
