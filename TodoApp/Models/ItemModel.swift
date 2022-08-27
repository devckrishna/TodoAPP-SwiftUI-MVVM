//
//  ItemModel.swift
//  TodoApp
//
//  Created by Dev C Krishna on 27/08/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
