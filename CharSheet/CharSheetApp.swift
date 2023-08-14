//
//  CharSheetApp.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import SwiftUI

@main
struct CharSheetApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                CharacterList()
            }
            .environmentObject(listViewModel)
        }
    }
}
