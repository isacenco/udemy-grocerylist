//
//  Tip.swift
//  Grocery List
//
//  Created by Ghenadie Isacenco on 2/4/25.
//

import Foundation
import TipKit

struct ButtonTip: Tip {
  var title: Text = Text("Essencial Foods")
  var message: Text? = Text("Add some everyday items to the shopping list.")
  var image: Image? = Image(systemName: "info.circle")
}
