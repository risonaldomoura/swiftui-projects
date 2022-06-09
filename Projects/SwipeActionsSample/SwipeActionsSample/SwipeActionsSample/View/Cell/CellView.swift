//
//  CellView.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
struct CellView: View {

    var viewModel: CellViewModelProtocol

    var body: some View {
        Text(viewModel.name)
        .padding()
        .swipeActions(edge: viewModel.deleteButton.edge) {
            ButtonView(viewModel: viewModel.deleteButton)
        }
        .swipeActions(edge: viewModel.editButton.edge) {
            ButtonView(viewModel: viewModel.editButton)
        }
        .swipeActions(edge: viewModel.micButton.edge) {
            ButtonView(viewModel: viewModel.micButton)
        }
    }

}
