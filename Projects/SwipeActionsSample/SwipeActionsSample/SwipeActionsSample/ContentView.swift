//
//  ContentView.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 07/06/22.
//

import SwiftUI

@available(iOS 15.0, *)
internal struct ContentView: View {

    private let animals = ["Cat", "Dog", "Bird", "Elephant"]

    private var populateList: [Animal] {
        var list: [Animal] = []

        let button = Buttons(
            delete: .delete,
            edit: .edit,
            mic: .mic
        )

        animals.forEach { name in
            let itemList = Animal(name: name, button: button)
            list.append(itemList)
        }

        return list
    }

    var body: some View {
        VStack {
            List {
                ForEach(populateList) { item in
                    Text(item.name)
                        .padding()
                        .swipeActions(edge: handleButtonStyle(style: item.button.delete).style.edge) {
                            let button = handleButtonStyle(style: item.button.delete)
                            Button(role: button.style.role) {
                                //TODO
                            } label: {
                                Label(button.style.label, systemImage: button.style.icon)
                            }
                            .tint(button.style.tint)
                        }
                        .swipeActions(edge: handleButtonStyle(style: item.button.edit).style.edge) {
                            let button = handleButtonStyle(style: item.button.edit)
                            Button(role: button.style.role) {
                                //TODO
                            } label: {
                                Label(button.style.label, systemImage: button.style.icon)
                            }
                            .tint(button.style.tint)
                        }
                        .swipeActions(edge: handleButtonStyle(style: item.button.mic).style.edge) {
                            let button = handleButtonStyle(style: item.button.mic)
                            Button(role: button.style.role) {
                                //TODO
                            } label: {
                                Label(button.style.label, systemImage: button.style.icon)
                            }
                            .tint(button.style.tint)
                        }
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
