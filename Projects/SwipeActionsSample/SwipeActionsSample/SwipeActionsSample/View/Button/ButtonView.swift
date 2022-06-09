//
//  ButtonView.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal struct ButtonView: View {

    internal var viewModel: ButtonViewModelProtocol

    internal var body: some View {
        Button(role: viewModel.role) {
            //TODO ACTION
        } label: {
            Label(viewModel.label, systemImage: viewModel.icon)
        }
        .tint(viewModel.tint)
    }

}
