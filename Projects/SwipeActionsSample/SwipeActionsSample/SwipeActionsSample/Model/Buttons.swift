//
//  Buttons.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal struct Buttons {
    internal let delete: ButtonProperties = handleButtonStyle(style: .delete).style
    internal let edit: ButtonProperties = handleButtonStyle(style: .edit).style
    internal let mic: ButtonProperties = handleButtonStyle(style: .mic).style
}

@available(iOS 15.0, *)
internal struct ButtonProperties {
    internal let label: String
    internal let icon: String
    internal let role: ButtonRole
    internal let tint: Color
    internal let edge: HorizontalEdge
}

@available(iOS 15.0, *)
internal enum ButtonStyle {
    case delete
    case edit
    case mic
}

@available(iOS 15.0, *)
internal struct handleButtonStyle {
    internal var style: ButtonProperties

    internal init(style: ButtonStyle) {
        switch style {
        case .delete:
        self.style = ButtonProperties (
            label: "Delete",
            icon: "trash.fill",
            role: .destructive,
            tint: .red,
            edge: .trailing
        )

        case .edit:
        self.style = ButtonProperties (
            label: "Edit",
            icon: "square.and.pencil",
            role: .destructive,
            tint: .blue,
            edge: .trailing
        )

        case .mic:
        self.style = ButtonProperties (
            label: "Mic",
            icon: "mic.fill",
            role: .destructive,
            tint: .green,
            edge: .leading
        )
        }
    }
}
