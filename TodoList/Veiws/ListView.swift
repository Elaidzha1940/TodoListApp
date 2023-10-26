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
    var body: some View {
        
        VStack {
            List {
                ListRowView()
            }
            .navigationTitle("Todo List 🖋️")
        }
    }
}

#Preview {
    NavigationView {
        ListView()
            //.preferredColorScheme(.dark)
    }
}

