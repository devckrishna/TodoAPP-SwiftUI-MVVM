//
//  ItemModel.swift
//  TodoApp
//
//  Created by Dev C Krishna on 27/08/22.
//

import Foundation

struct ItemModel: Identifiable, Codable  {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel{
        ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
