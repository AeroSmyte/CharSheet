//
//  CharSheetApp.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import SwiftUI
import SwiftData

@main
struct CharSheetApp: App {
  
  let modelContainer: ModelContainer
  
  init() {
    do {
      modelContainer = try ModelContainer(for: Character.self)
    } catch {
      fatalError("Could not initialize ModelContainer")
    }
  }
  
  
  @StateObject var listViewModel : CharacterListViewModel = CharacterListViewModel()
  
  var body: some Scene {
    WindowGroup {
      NavigationView {
        CharacterList()
      }
      .environmentObject(listViewModel)
    }
    .modelContainer(modelContainer)
  }
}
