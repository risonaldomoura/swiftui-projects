//
//  ContentView.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 07/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal struct ContentView: View {

    private let viewModel = ContentViewModel(
        animals: ["Cat", "Dog", "Bird", "Horse", "Elephant"]
    )

    var body: some View {
        VStack {
            List {
                ForEach(viewModel.dataList) { item in
                    CellView(viewModel: CellViewModel(data: item))
                }
            }
        }
    }

}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
