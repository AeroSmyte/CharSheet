//
//  LevelAndHPView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/20/24.
//

import SwiftUI

struct LevelAndHPView: View {
  var level: Int
  var hitPoints: Int
  var totalHitPoints: Int

  var body: some View {
    VStack {
      
      ProgressView(value: (Double(level) / 20.0)) {
        CharacterDetailsTextView(text: "Level \(level)".uppercased())
          .kerning(1)

      }
        
      ProgressView(value: (Double(hitPoints) / Double(totalHitPoints))) {
        CharacterDetailsTextView(text: "HP: \(hitPoints) / \(totalHitPoints)".uppercased())
          .kerning(1)
      }
    }
    .frame(maxWidth: 200)
  }
}

struct CharacterDetailsTextView: View {
  var text: String
  var body: some View {
    Text(text)
      .font(.caption)
      .foregroundColor(.secondary)
  }
}

struct LevelAndHPView_Previews: PreviewProvider {
    static var previews: some View {
      LevelAndHPView(level: 10, hitPoints: 145, totalHitPoints: 200)
    }
}
