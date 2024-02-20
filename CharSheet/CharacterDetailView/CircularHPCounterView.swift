//
//  CircularHPCounterView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/20/24.
//

import SwiftUI

struct CircularHPCounterView: View {
  var hitPoints: Int
  
  var body: some View {
    ZStack {
      Circle()
        .stroke(
          Color.gray.opacity(0.5),
          lineWidth: 7
        )
      Text("Current Hit Points".uppercased())
        .font(.title3)
        .foregroundColor(.gray)
        .fontWeight(.heavy)
      Circle()
        .trim(from: 0, to: CGFloat(hitPoints) / 100.0)
        .stroke(
          Color("AccentColor"),
          style: StrokeStyle (
            lineWidth: 7,
            lineCap: .round
          )
        )
        .rotationEffect(.degrees(-90))
    }
  }
}

struct CircularHPCounterView_Previews: PreviewProvider {
    static var previews: some View {
      CircularHPCounterView(hitPoints: 50)
    }
}
