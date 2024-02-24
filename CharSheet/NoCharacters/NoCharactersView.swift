//
//  NoCharactersView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 8/27/23.
//

import SwiftUI

struct NoCharactersView: View {
    
    var characterScrollList = ["bard", "barbarian", "cleric", "druid", "fighter", "monk", "paladin", "ranger", "rogue", "sorceror", "warlock", "wizard"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("You don't have any characters yet!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("When is your next game? You should head up to the Add button and add a new character!")
                    .padding(.bottom, 20)
                
                NavigationLink(destination: AddCharacterForm(), label: {
                    
                    
                    Text("Add a new \(randomClass)")
                })
            }
        }
        // when in portrait mode, maxWidth will be 400
        .frame(maxWidth: 400)
        .multilineTextAlignment(.center)
        .padding(40)
    }
  
  var randomClass: String {
    guard let randomIndex = (0..<characterScrollList.count).randomElement() else {
      return ""
    }
    return characterScrollList[randomIndex]
  }
}

struct NoCharactersView_Previews: PreviewProvider {
    static var previews: some View {
        NoCharactersView()
    }
}
