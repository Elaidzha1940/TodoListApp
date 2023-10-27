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
    @State var items: [ItemModel] = [
        ItemModel(title: "first", isComplete: false),
        ItemModel(title: "second", isComplete: true),
        ItemModel(title: "third", isComplete: false),
    ]
    
    var body: some View {
        
        VStack {
            List {
                ForEach(items) { item in
                    ListRowView(item: item)
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: moveItem)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List 🖋️")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView())
            )
            .font(.system(size: 20, weight: .semibold, design: .rounded))
        }
        .accentColor(.black)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet , to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}

