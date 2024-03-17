//
//  ContentView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import SwiftUI
import SwiftData

struct CharacterList: View {
  
  @Query(sort: \Character.characterName) private var characters: [Character]
  @Environment(\.modelContext) var context
  
        
    @State var isAddFormActive = false
    
    var body: some View {
        NavigationStack {
        
            if characters.isEmpty {
                NoCharactersView()
                    .navigationTitle("No Characters!")
            } else {
                List {
                    ForEach(characters) { character in
                        NavigationLink(destination: CharacterDetailView(character: character), label: {
                          CharacterCell(characterName: character.characterName, level: character.level, characterClass: character.characterClass)
                        })
                    }
                    .onDelete { indexSet in
                      indexSet.forEach { index in
                        let char = characters[index]
                        context.delete(char)
                      }
                    }
                    .navigationTitle("QuickChar")
                }
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddCharacterForm()))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
            .modelContainer(for: Character.self, inMemory: true)
    }
}
