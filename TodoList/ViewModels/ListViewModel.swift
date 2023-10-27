//  /*
//
//  Project: TodoList
//  File: ListViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.10.2023
//
//  */

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "first", isComplete: false),
            ItemModel(title: "second", isComplete: true),
            ItemModel(title: "third", isComplete: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet , to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isComplete: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
        //        if let index = items.firstIndex { (existingItem) in
        //            return existingItem.id == item.id
        //        } {
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = ItemModel(title: item.title, isComplete: !item.isComplete)
        }
    }
}
