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
  @Environment(\.modelContext) private var context
  
  @State var characterName : String = ""
  @State private var selectedGameType : GameType = .FantasyStandard
  @State private var selectedLevel = 1
  @State private var selectedCurrentHitPoints = 0
  @State private var selectedTotalHitPoints = 100
  @State private var selectedClass : CharacterClass = .barbarian
  @State private var inputURL = ""
  @State private var selectedStatus : Status = .active
  
  
  var body: some View {
    NavigationView {
      Form {
        
        Section(header: Text("Character Name")) {
          TextField("Character Name", text: $characterName)
            .autocorrectionDisabled()
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
          TextField("Current # of Hit Points", value: $selectedCurrentHitPoints, format: .number)
          
          TextField("Total# of Hit Points", value: $selectedTotalHitPoints, format: .number)
        }
        
        Picker("Pick Your Class", selection: $selectedClass) {
          ForEach(CharacterClass.allCases, id: \.self) { className in
            Text("\(className.rawValue)")
              .tag(className)
          }
        }
        .pickerStyle(.inline)
        
        Picker("Is this character active?", selection: $selectedStatus) {
          ForEach(Status.allCases,
                  id: \.self) { option in
            Text("\(option.rawValue)")
            
            
          }
        }
        
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
        
        
      }
    }
    .navigationTitle("Add New Character")
    
  }
  
  func saveButtonPressed() {
    
    let newChar = Character(gameType: selectedGameType, characterName: characterName, level: selectedLevel, currentHitPoints: selectedCurrentHitPoints, totalHitPoints: selectedTotalHitPoints, dateAdded: Date.now, characterClass: selectedClass, URL: inputURL, status: selectedStatus)
    context.insert(newChar)
    
    presentationMode.wrappedValue.dismiss()
  }
  
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    AddCharacterForm()
      .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
      .previewDisplayName("Form View")
  }
}
