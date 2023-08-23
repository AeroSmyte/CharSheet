//
//  CharacterFormView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 8/3/23.
//

import Combine
import SwiftUI

struct AddCharacterForm: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : CharacterListViewModel

    @State var characterName : String = ""
    @State private var selectedGameType : GameType = .FantasyStandard
    @State private var selectedLevel = 1
    @State private var selectedHitPoints = 0
    @State private var selectedClass : CharacterClass = .Barbarian
    @State private var inputURL = ""

    
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Character Name")) {
                    TextField("Character Name", text: $characterName)
                }
                
                Picker("RPG Type", selection: $selectedGameType) {
                    Text("That Fantasy Game").tag(GameType.FantasyStandard)
                    Text("PbTA").tag(GameType.PBtA)
                }
                .pickerStyle(.inline)
                
                
                
                Section(header: Text("Character Level")) {
                    Picker("Level", selection: $selectedLevel) {
                        ForEach(1..<21, id: \.self) { number in
                            Text("\(number)")
                        }
                        
                    }
                    .pickerStyle(.automatic)
                }
                
                
                Section(header: Text("Number of Hit Points")) {
                    TextField("# of Hit Points", value: $selectedHitPoints, format: .number)
                }
                
                Picker("Pick Your Class", selection: $selectedClass) {
                    ForEach(CharacterClass.allCases, id: \.self) { className in
                        Text("\(className.rawValue)")
                            .tag(className)
                    }
                }
                .pickerStyle(.inline)
                
                
                TextField("Input the URL to your online sheet.", text: $inputURL)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                })
                .disabled(characterName.count < 3)
                .navigationTitle("Add New Character")
            }
        }

    }
    
    func saveButtonPressed() {
        listViewModel.addCharacter(gameType: selectedGameType, characterName: characterName, level: selectedLevel, hitPoints: selectedHitPoints, characterClass: selectedClass, URL: inputURL)
        
        presentationMode.wrappedValue.dismiss()
    }

}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddCharacterForm()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
            .previewDisplayName("Form View")
            .environmentObject(CharacterListViewModel())
    }
}
