//
//  ListSelectionApp.swift
//  ListSelection
//
//  Created by André Roque Matheus on 12/11/20.
//

import SwiftUI

@main
struct ListSelectionApp: App {
    @State var items = [
        "Item 1", "Item 2", "Item 3"
    ].map { Item(name: $0) }
    @State var selected: Int?
    
    var body: some Scene {
        WindowGroup {
            ContentView(items: $items, selection: $selected)
        }
    }
}
