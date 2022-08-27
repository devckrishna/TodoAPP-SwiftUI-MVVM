//
//  AddView.swift
//  TodoApp
//
//  Created by Dev C Krishna on 27/08/22.
//

import SwiftUI

struct AddView: View {
    @State var textFeildText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type Something Here...", text: $textFeildText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }.padding(14)
        }.navigationTitle("Add an Item 🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
