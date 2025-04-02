//
//  ContentView.swift
//  Grocery List
//
//  Created by Ghenadie Isacenco on 2/4/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
  @Environment(\.modelContext) private var modelContext
  @Query private var items: [Item]
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(items) { item in
          Text(item.title)
        }
      } //: LIST
      .navigationTitle(Text("Grocery List"))
      .overlay {
        if items.isEmpty {
          ContentUnavailableView("Empty Cart", systemImage: "cart.circle", description: Text("Add some items to the shopping list."))
        }
      }
    } //: NAV
  }
}

#Preview {
  ContentView()
    .modelContainer(for: Item.self, inMemory: true)
}
