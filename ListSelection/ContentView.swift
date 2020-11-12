//
//  ContentView.swift
//  ListSelection
//
//  Created by André Roque Matheus on 12/11/20.
//

import SwiftUI

struct ContentView: View {
    @State var items = [
        "Item 1", "Item 2", "Item 3"
    ]
    @State var selection: String? = nil
    
    var body: some View {
        HStack {
            List(items, id: \.self, selection: $selection) { item in
                Text(item).tag(item)
            }
            
            Text(selection ?? "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
