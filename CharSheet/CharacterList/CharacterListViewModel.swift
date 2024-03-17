////
////  ListViewModel.swift
////  CharSheet
////
////  Created by Lexi McQueen on 8/13/23.
////
//
//import Foundation
//
//class CharacterListViewModel : ObservableObject {
//    
////    @Published var characters : [Character] = [] {
////        didSet {
////            saveCharacters()
////        }
////    }
////    @Published var searchText: String = ""
////    
////    let characterKey = "character_list"
////    
////    var filteredCharacters: [Character] {
////        guard !searchText.isEmpty else { return characters }
////        
////        return characters.filter { char in
////            char.characterName.lowercased().contains(searchText.lowercased())
////        }
////    }
////    
////    init() {
////        getCharacters()
////    }
////    
////    func getCharacters() {
//////        guard
////            let data = UserDefaults.standard.data(forKey: characterKey),
////            let savedCharacters = try? JSONDecoder().decode([Character].self, from: data)
////         else { return }
////        
////        self.characters = savedCharacters
//    }
//    
//    func addCharacter(gameType: GameType,
//                      characterName: String,
//                      level: Int,
//                      currentHitPoints: Int,
//                      totalHitPoints: Int,
//                      characterType: CharacterClass,
//                      URL: String) {
//        let newChar = Character(gameType: gameType, characterName: characterName, level: level, currentHitPoints: currentHitPoints, totalHitPoints: totalHitPoints, characterClass: characterType, URL: URL)
//        characters.append(newChar)
//    }
//    
//    func deleteCharacter(indexSet: IndexSet) {
//        characters.remove(atOffsets: indexSet)
//    }
//    
//    func moveCharacter(from: IndexSet, to: Int) {
//        characters.move(fromOffsets: from, toOffset: to)
//    }
//    
////    func saveCharacters() {
////        if let encodedData = try? JSONEncoder().encode(characters) {
////            UserDefaults.standard.set(encodedData, forKey: characterKey)
////        }
//    }
//}
//
