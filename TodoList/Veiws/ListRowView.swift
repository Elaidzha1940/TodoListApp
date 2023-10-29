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
    let item: ItemModel
    
    var body: some View {
        
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .mint : .red)
            
            Text(item.title)
        }
        .font(.system(size: 20, weight: .semibold, design: .rounded))
    }
}

#Preview {
    let item1 = ItemModel(title: "first", isCompleted: false)
    let item2 = ItemModel(title: "second", isCompleted: true)
    
   return Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    .previewLayout(.sizeThatFits)
    .padding()
}
