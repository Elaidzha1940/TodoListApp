//  /*
//
//  Project: TodoList
//  File: ListRowView.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.10.2023
//
//  */

import SwiftUI

struct ListRowView: View {
    var body: some View {
        
        HStack {
            Image(systemName: "checkmark.circle")
                .font(.system(size: 20, weight: .bold))
            Text("first item")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
        }
    }
}

#Preview {
    ListRowView()
}
