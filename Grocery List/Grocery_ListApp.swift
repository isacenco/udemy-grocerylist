//
//  Grocery_ListApp.swift
//  Grocery List
//
//  Created by Ghenadie Isacenco on 2/4/25.
//

import SwiftUI
import SwiftData

@main
struct Grocery_ListApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .modelContainer(for: Item.self)
    }
  }
}
