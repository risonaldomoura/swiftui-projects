//
//  Data.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal struct Data: Identifiable {
    internal let id = UUID()
    internal let name: String
    internal let button: Buttons
}
