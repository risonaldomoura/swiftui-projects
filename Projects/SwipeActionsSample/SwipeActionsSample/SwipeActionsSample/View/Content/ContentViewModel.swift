//
//  ContentViewModel.swift
//  SwipeActionsSample
//
//  Created by Risonaldo Moura on 09/06/22.
//

import Foundation

@available(iOS 15.0, *)
internal protocol ContentViewModelProtocol {
    var dataList: [Data] { get }
}

@available(iOS 15.0, *)
internal struct ContentViewModel: ContentViewModelProtocol {

    internal var dataList: [Data]

    internal init(animals: [String]) {
        dataList = []

        animals.forEach { name in
            let itemList = Data(name: name, button: Buttons())
            dataList.append(itemList)
        }
    }

}
