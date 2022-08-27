//
//  ListRowView.swift
//  TodoApp
//
//  Created by Dev C Krishna on 27/08/22.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle"
                  : "circle")
                .foregroundColor(item.isCompleted ? .green :.red)
                .padding(.vertical, 8)
            Text(item.title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var itemModel1 = ItemModel(title: "This is first", isCompleted: true)
    static var itemModel2 = ItemModel(title: "This is second", isCompleted: false)
    static var previews: some View {
        Group {
            ListRowView(item: itemModel1)
            ListRowView(item: itemModel2)
        }.previewLayout(.sizeThatFits)
       
    }
}
