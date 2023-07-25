//
//  ContentView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import SwiftUI

struct CharacterList: View {
    var characters : [Character] = CharList.tenCharacters
    
    var body: some View {
        NavigationStack {
            
            List(characters, id: \.id) { character in
                NavigationLink(destination: CharacterDetailView(character: character), label: {
                    Text("Navigate")
                    CharacterCell(character: character)
                })
            }
            .navigationTitle("QuickChar")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        print("Add tapped!")
                    }
                }
            }
        }
    }
}

struct CharacterCell : View {
    var character : Character
    
    var body : some View {
        HStack {
            Image(character.characterIcon)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack(alignment: .leading, spacing: 5) {
                Text(character.characterName)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .font(.title)
                    .minimumScaleFactor(1)
                Text("Level " + String(character.level))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(character.CharacterClass.rawValue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}
