//  /*
//
//  Project: TodoList
//  File: ListView.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.10.2023
//
//  */

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
    "fisrt",
    "second",
    "third"
    ]
    
    var body: some View {
        
        VStack {
            List {
                ForEach(items, id: \.self) { item in
                    ListRowView(title: item)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Todo List 🖋️")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: Text("destination"))
            )
            .font(.system(size: 20, weight: .semibold, design: .rounded))
        }
        .accentColor(.black)
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}

