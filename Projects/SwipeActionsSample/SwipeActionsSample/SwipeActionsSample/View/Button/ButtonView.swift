//
//  ButtonView.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal struct ButtonView: View {

    @State private var showingAlert: Bool = false

    internal var viewModel: ButtonViewModelProtocol

    internal var body: some View {
        Button(role: viewModel.role) {
            showingAlert = true
            print(viewModel.label)
        } label: {
            Label(viewModel.label, systemImage: viewModel.icon)
        }
        .tint(viewModel.tint)
        .alert(viewModel.label, isPresented: $showingAlert, actions: {})
    }

}
