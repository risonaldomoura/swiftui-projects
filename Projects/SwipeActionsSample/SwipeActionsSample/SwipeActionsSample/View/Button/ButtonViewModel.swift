//
//  ButtonViewModel.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal protocol ButtonViewModelProtocol {
    var label: String { get }
    var icon: String { get }
    var role: ButtonRole { get }
    var tint: Color { get }
    var edge: HorizontalEdge  { get }
}

@available(iOS 15.0, *)
internal struct ButtonViewModel: ButtonViewModelProtocol {

    internal let label: String
    internal let icon: String
    internal let role: ButtonRole
    internal let tint: Color
    internal let edge: HorizontalEdge

    internal init(properties: ButtonProperties) {
        label = properties.label
        icon = properties.icon
        role = properties.role
        tint = properties.tint
        edge = properties.edge
    }

}
    
