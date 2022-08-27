//
//  ListViewModel.swift
//  TodoApp
//
//  Created by Dev C Krishna on 27/08/22.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_lis t"
    
    init(){
        getItems()
    }
    
    func getItems() {
//        let newItem = [
//            ItemModel(title: "This is the first task", isCompleted: false),
//            ItemModel(title: "This is the seocnd", isCompleted: true),
//            ItemModel(title: "Third!", isCompleted: true)
//        ]
//        items.append(contentsOf: newItem)
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedData = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedData
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        items.append(ItemModel(title: title, isCompleted: false))
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData , forKey: itemsKey)
        }
    }
}
