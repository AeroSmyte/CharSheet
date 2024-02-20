//
//  CharacterNameTitleView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/20/24.
//

import SwiftUI

struct CharacterNameTitleView: View {
  var name: String
  
  var body: some View {
    Text(name)
      .font(.title)
      .fontWeight(.black)
      .kerning(1)
      .foregroundColor(.primary)
      .lineLimit(2)
  }
}
struct CharacterNameTitleView_Previews: PreviewProvider {
    static var previews: some View {
      CharacterNameTitleView(name: "Biff Christmas")
    }
}
