//
//  CharacterCell.swift
//  CharSheet
//
//  Created by Lexi McQueen on 8/13/23.
//

import Foundation
import SwiftUI

struct CharacterCell : View {
    
  var characterName: String
  var level: Int
  var characterClass: CharacterClass

    
    var body : some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 5) {
                Text(characterName)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    .minimumScaleFactor(1)
                Text("LEVEL " + String(level))
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                
              Text(characterClass.rawValue)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct CharacterCellView_Previews: PreviewProvider {
    static var character1 = Character(gameType: .FantasyStandard, characterName: "Character Not Supplied", level: 0, currentHitPoints: 50, totalHitPoints: 100, characterClass: .none, URL: "www.google.com")
    
    static var previews: some View {
      CharacterCell(characterName: "Biff Christmas", level: 5, characterClass: .bard)
    }
}
