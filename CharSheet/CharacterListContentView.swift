//
//  ContentView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import SwiftUI

struct CharacterListContentView: View {
    var characters : [Character] = CharList.tenCharacters
    
    var body: some View {
        NavigationView {
            List(characters, id: \.id) { character in
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
            .navigationTitle("QuickChar")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListContentView()
    }
}
