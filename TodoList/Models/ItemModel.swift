//  /*
//
//  Project: TodoList
//  File: ItemModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.10.2023
//
//  */
import Foundation

struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String
    let isComplete: Bool
}
