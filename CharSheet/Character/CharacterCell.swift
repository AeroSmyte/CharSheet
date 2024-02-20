//
//  CharacterCell.swift
//  CharSheet
//
//  Created by Lexi McQueen on 8/13/23.
//

import Foundation
import SwiftUI

struct CharacterCell : View {
    

    var character : Character
    
    var body : some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(character.characterName)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    .minimumScaleFactor(1)
                Text("LEVEL " + String(character.level))
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                
                Text(character.characterType.rawValue)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct CharacterCellView_Previews: PreviewProvider {
    static var character1 = Character(gameType: .FantasyStandard, characterName: "Character Not Supplied", level: 0, hitPoints: 0, characterType: .None, URL: "google.com")
    
    static var previews: some View {
        CharacterCell(character: character1)
    }
}

