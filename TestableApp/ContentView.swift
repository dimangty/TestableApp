//
//  ContentView.swift
//  testable-view-swiftui
//
//  Created by Lazar Otasevic on 22.12.23..
//

import SwiftUI
import SwiftMacros

struct ContentView: View {
    @Bindable var viewModel = ContentViewModel()

    var body: some View {
        VStack {
            Link("Link", destination: #URL( "https://www.google.com"))
            Text("The counter value is \(viewModel.counter)")
                .accessibilityIdentifier("counterLabel")
            Button("Increase") {
                viewModel.increase()
            }
            Button("Show sheet") {
                viewModel.showSheet()
            }
        }
        .sheet(isPresented: $viewModel.isSheetShown) {
            Sheet()
                .accessibilityIdentifier("CustomSheetView")
        }
    }
}
