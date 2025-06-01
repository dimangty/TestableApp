//
//  ContentViewModel.swift
//  testable-view-swiftui
//
//  Created by Lazar Otasevic on 24.12.23..
//

import SwiftUI

@Observable
final class ContentViewModel {
    var isSheetShown = false
    var counter = 0

    func increase() {
        counter += 1
    }

    func showSheet() {
        isSheetShown.toggle()
    }
}
