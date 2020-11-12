//
//  ListSelectionApp.swift
//  ListSelection
//
//  Created by André Roque Matheus on 12/11/20.
//

import SwiftUI

@main
struct ListSelectionApp: App {
    @State var selected: String? {
        didSet {
            print("did set! \(String(describing: selected))")
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
