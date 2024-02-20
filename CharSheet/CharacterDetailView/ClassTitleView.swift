//
//  ClassTitleView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/20/24.
//

import SwiftUI

struct ClassTitleView: View {
  var characterClass: String
  
  var body: some View {
    Text(characterClass)
      .font(.headline)
      .foregroundColor(.secondary)
  }
}

struct ClassTitleView_Previews: PreviewProvider {
    static var previews: some View {
      ClassTitleView(characterClass: "Barbarian".uppercased())
    }
}
