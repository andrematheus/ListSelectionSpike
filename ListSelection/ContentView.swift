//
//  ContentView.swift
//  ListSelection
//
//  Created by André Roque Matheus on 12/11/20.
//

import SwiftUI

struct Item: Hashable {
    let id = UUID()
    var name: String
}

struct ItemEdit: View {
    @Binding var item: Item
    
    var body: some View {
        TextField("name", text: $item.name)
    }
}

struct ContentView: View {
    @State var items = [
        "Item 1", "Item 2", "Item 3"
    ].map { Item(name: $0) }
    @Binding var selection: Int?
    
    var body: some View {
        NavigationView {
            List(items.indices, id: \.self, selection: $selection) { index in
                Text(items[index].name).tag(items[index])
            }
            
            Text(String.init(describing: selection))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selection: Binding.constant(nil))
    }
}
