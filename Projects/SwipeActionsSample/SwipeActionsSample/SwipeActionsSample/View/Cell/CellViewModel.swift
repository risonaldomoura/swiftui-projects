//
//  CellViewModel.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal protocol CellViewModelProtocol {
    var name: String { get }
    var deleteButton: ButtonViewModelProtocol { get }
    var editButton: ButtonViewModelProtocol { get }
    var micButton: ButtonViewModelProtocol { get }
}

@available(iOS 15.0, *)
internal struct CellViewModel: CellViewModelProtocol {

    internal let name: String
    internal let deleteButton: ButtonViewModelProtocol
    internal let editButton: ButtonViewModelProtocol
    internal let micButton: ButtonViewModelProtocol

    internal init(data: Data) {
        name = data.name
        deleteButton = ButtonViewModel(properties: data.button.delete)
        editButton = ButtonViewModel(properties: data.button.edit)
        micButton = ButtonViewModel(properties: data.button.mic)
    }

}
