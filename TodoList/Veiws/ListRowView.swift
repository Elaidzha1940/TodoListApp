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
            Image(systemName: item.isComplete ? "checkmark.circle" : "circle")
                .foregroundColor(item.isComplete ? .mint : .red)
            
            Text(item.title)
        }
        .font(.system(size: 20, weight: .semibold, design: .rounded))
    }
}

#Preview {
    var item1 = ItemModel(title: "first", isComplete: false)
    var item2 = ItemModel(title: "second", isComplete: true)
    
   return Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    .previewLayout(.sizeThatFits)
    .padding()
}
