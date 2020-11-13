//
//  ContentView.swift
//  ListSelection
//
//  Created by André Roque Matheus on 12/11/20.
//

import SwiftUI

struct Item: Hashable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    @State var items = [
        "Item 1", "Item 2", "Item 3"
    ].map { Item(name: $0) }
    @State var selection: Item? = nil
    
    var body: some View {
        HStack {
            List(items, id: \.self, selection: $selection) { item in
                Text(item.name).tag(item)
            }
            
            Text(selection?.name ?? "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
