//
//  TestableAppTests.swift
//  TestableAppTests
//
//  Created by Дмитрий Быков on 31.05.2025.
//

import Testing
import Foundation
import SnapshotTesting
@testable import TestableApp

@MainActor
struct TestableAppTests {
    
    @Test func testExample() async throws {
        let model = ContentViewModel()
        model.increase()
        #expect(model.counter == 1)
    }
    
    @Test func swiftUIView() {
        let view = Sheet()

        assertSnapshot(of: view, as: .image, record: false)
    }
}
