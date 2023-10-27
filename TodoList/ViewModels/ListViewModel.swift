//  /*
//
//  Project: TodoList
//  File: ListViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.10.2023
//
//  */

import Foundation

/*
 
 Crud Functions
 
 Create - addItems
 Read   - getItems
 Update - updateItem
 Delete - deleteItem
 
 */

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems() {
//        let newItems = [
//            ItemModel(title: "first", isCompleted: false),
//            ItemModel(title: "second", isCompleted: true),
//            ItemModel(title: "third", isCompleted: false),
//        ]
//        items.append(contentsOf: newItems)
        
        let data = UserDefaults.standard.data(forKey: itemsKey)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet , to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
        //        if let index = items.firstIndex { (existingItem) in
        //            return existingItem.id == item.id
        //        } {
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
    
   func saveItems() {
       if let encodedData = try? JSONEncoder().encode(items) {
           UserDefaults.standard.set(encodedData, forKey: itemsKey)
       }
    }
}
