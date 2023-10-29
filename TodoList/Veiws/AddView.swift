//  /*
//
//  Project: TodoList
//  File: AddView.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.10.2023
//
//  */

import SwiftUI

struct AddView: View {
    @State var textField: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State var alertTitle: String
    @State var showAlert: Bool = false
    
    var body: some View {
        
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textField)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(15)
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(15)
                })
            }
            .padding(10)
        }
        .navigationTitle("Add an Item!")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textField)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textField.count < 3 {
            alertTitle = "New todo item must beat least 3 characters long!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert (title: Text(alertTitle))
    }
}

#Preview {
    NavigationView {
        AddView(alertTitle: String())
    }
    .environmentObject(ListViewModel())
}
