//
//  StandardLinkButton.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/20/24.
//

import SwiftUI

// trying to create a REUSABLE button that can be used around the app
struct StandardLinkButton: View {
  let label : String
  let icon: String?
  let action: () -> Void
  
  init(label: String,
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
      .bold()
      .padding(.vertical, 12)
      .foregroundColor(Color.accentColor)
//      .frame(maxWidth: 800)
      .frame(width: 200)
      .background {
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.accentColor, lineWidth: 2.0)
          .background {
            RoundedRectangle(cornerRadius: 12)
              .fill(Color.accentColor.opacity(0.1))
          }
      }
    }
    
  }
}

struct StandardLinkButton_Previews: PreviewProvider {
  static var previews: some View {
    StandardLinkButton(label: "Fake Button", icon: "heart.fill") {}
  }
}
