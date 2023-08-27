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
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .font(.title3)
                    .minimumScaleFactor(1)
                Text("Level " + String(character.level))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(character.characterType.rawValue)
            }
        }
    }
}
