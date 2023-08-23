//
//  CharacterDetailView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/24/23.
//

import SwiftUI

struct CharacterDetailView: View {
    var character : Character
    
    var body: some View {
        NavigationView {
            ZStack() {
                Color.accentColor.ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 300, height: 300)
                    .shadow(radius: 20)
                
                VStack(spacing: 10) {
                    Text(character.characterName)
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(maxWidth: 285)
                        .padding()
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                    
                    HStack(spacing: 50) {
                        Text("Level \(character.level)")
                            .font(.title3)
                            .foregroundColor(.secondary)
                        Text(character.CharacterClass.rawValue)
                            .font(.title3)
                            .foregroundColor(.secondary)
                        //            }
                    }
                    
                    HStack {
                        VStack {
                            Text("HP")
                                .font(.title)
                            Text("\(character.hitPoints)")
                                .font(.subheadline)
                        }
                    }
                    
                }
                
            }
        }
        
    }
    
    
}

struct CharacterDetailView_Previews: PreviewProvider {
    
    static var character1 = Character(gameType: .FantasyStandard, characterName: "Character Not Supplied", level: 0, hitPoints: 0, CharacterClass: .None, URL: "google.com")
    
    static var previews: some View {
        CharacterDetailView(character: character1)
    }
}

struct StandardButton: View {
    var title : String
    
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 160, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10.0)
        
    }
}
