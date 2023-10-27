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
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        
        VStack {
            List {
                ForEach(listViewModel.items) { item in
                    ListRowView(item: item)
                        .onTapGesture {
                            withAnimation(.linear) {
                                <#code#>
                            }
                        }
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List 🖋️")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView(alertTitle: String()))
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
    .environmentObject(ListViewModel())
}

