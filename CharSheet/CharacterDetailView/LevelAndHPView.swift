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
  
  var body: some View {
    HStack {
      
      CharacterDetailsTextView(text: "Level \(level)".uppercased())

      CharacterDetailsTextView(text: "HP: \(hitPoints)")
    }
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
      LevelAndHPView(level: 10, hitPoints: 145)
    }
}
