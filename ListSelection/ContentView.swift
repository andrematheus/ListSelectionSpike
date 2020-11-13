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
    @Binding var items: [Item]
    @Binding var selection: Int?
    
    var body: some View {
        NavigationView {
            List(items.indices, id: \.self, selection: $selection) { index in
                NavigationLink(destination: ItemEdit(item: $items[index])) {
                    Text(items[index].name).tag(items[index])
                }
            }
            
            Text(String.init(describing: selection))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: Binding.constant([]),
                    selection: Binding.constant(nil))
    }
}
