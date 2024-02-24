//
//  CircularHPCounterView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 2/20/24.
//

import SwiftUI

struct CircularHPCounterView: View {
  var currentHitPoints: Int
  var totalHitPoints: Int
  
  var body: some View {
    ZStack {
      Circle()
        .stroke(
          Color.gray.opacity(0.5),
          lineWidth: 7
        )
      VStack {
        Text("\(currentHitPoints)")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
        Divider()
          .frame(width: 100)
        Text("\(totalHitPoints)")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
        Text("HP")
          .font(.title2)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
      }
      Circle()
        .trim(from: 0, to: CGFloat(currentHitPoints) / CGFloat(totalHitPoints))
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
      CircularHPCounterView(currentHitPoints: 50, totalHitPoints: 100)
    }
}
