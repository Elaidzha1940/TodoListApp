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
    
    var body: some View {
        
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textField)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.5))
                .cornerRadius(15)
            }
            .padding(10)
        }
        .navigationTitle("Add")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
