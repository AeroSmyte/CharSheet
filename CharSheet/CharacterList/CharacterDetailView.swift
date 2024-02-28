//
//  CharacterDetailView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/24/23.
//

import SwiftUI

struct CharacterDetailView: View {
  @Environment(\.openURL) private var openURL
  var character : Character
  
  var body: some View {
    NavigationView {
      VStack {
        CharacterNameTitleView(name: character.characterName)
        ClassTitleView(characterClass: character.characterClass.rawValue)
        CircularHPCounterView(currentHitPoints: character.currentHitPoints, totalHitPoints: character.totalHitPoints)
          .frame(maxWidth: 200)
        LevelAndHPView(level: character.level, hitPoints: character.currentHitPoints, totalHitPoints: character.totalHitPoints)
        ButtonView(label: "Link To Sheet", icon: "square.and.arrow.up") {
          
          
        }
      }
    }
  }
}

struct CharacterDetailView_Previews: PreviewProvider {
  
  static var character1 = Character(
    gameType: .FantasyStandard,
    characterName: "Character Not Supplied",
    level: 0,
    currentHitPoints: 64,
    totalHitPoints: 100,
    characterClass: .none,
    URL: "google.com",
    status: .active
  )
  
  static var previews: some View {
    CharacterDetailView(character: character1)
  }
}

struct ButtonView: View {
  let icon: String?
  let label: String
  let action: () -> Void
  
  init(
    label: String,
    icon: String? = nil,
    action: @escaping () -> Void
  ) {
    self.label = label
    self.icon = icon
    self.action = action
  }
  
  var body: some View {
    Button {
      action()
    } label: {
      HStack(spacing: 8) {
        if let icon {
          Image(systemName: icon)
            .resizable()
            .scaledToFit()
            .frame(width: 28, height: 28)
        }
        Text(label)
      }
      .font(.title2)
      .padding(.vertical, 12)
      .foregroundColor(Color("AccentColor"))
      .frame(maxWidth: .infinity)
      .background {
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.purple, lineWidth: 2.0)
          .background {
            RoundedRectangle(cornerRadius: 12)
              .fill(Color("AccentColor").opacity(0.2))
          }
      }
    }
  }
}
