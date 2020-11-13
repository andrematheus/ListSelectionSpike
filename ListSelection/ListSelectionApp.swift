//
//  ListSelectionApp.swift
//  ListSelection
//
//  Created by André Roque Matheus on 12/11/20.
//

import SwiftUI

@main
struct ListSelectionApp: App {
    @State var selected: Item? 
    
    var body: some Scene {
        WindowGroup {
            ContentView(selection: $selected)
        }
    }
}
