//
//  ContentView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/23/23.
//

import SwiftUI

struct CharacterList: View {
    
    @EnvironmentObject var listViewModel : CharacterListViewModel
    
    @State var isAddFormActive = false
    
    var body: some View {
        NavigationStack {
            
            List {
                ForEach(listViewModel.filteredCharacters) { character in
                    // add bottom sheet here
                    NavigationLink(destination: CharacterDetailView(character: character), label: {
                        CharacterCell(character: character)
                    })
                }
                .onDelete(perform: listViewModel.deleteCharacter)
                .onMove(perform: listViewModel.moveCharacter)
                .navigationTitle("QuickChar")
            }
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddCharacterForm()))
            
            .searchable(text: $listViewModel.searchText)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
            .environmentObject(CharacterListViewModel())
    }
}
