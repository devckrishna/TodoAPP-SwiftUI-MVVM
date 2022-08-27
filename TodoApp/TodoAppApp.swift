//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Dev C Krishna on 27/08/22.
//

import SwiftUI

@main
struct TodoAppApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
