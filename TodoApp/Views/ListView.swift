//
//  ListView.swift
//  TodoApp
//
//  Created by Dev C Krishna on 27/08/22.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first task", isCompleted: false),
        ItemModel(title: "This is the seocnd", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List ✏️")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(
                "Add",
                destination: AddView()
            )
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
