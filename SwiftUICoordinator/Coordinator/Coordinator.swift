//
//  Coordinator.swift
//  SwiftUICoordinator
//
//  Created by Gokul on 23/04/23.
//

import SwiftUI

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath() ///List of data representing the content of a navigation stack.
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    func pop() {
        path.removeLast()
    }
    func popToRoot() {
        path.removeLast(path.count)
    }
    func dismissSheet() {
        self.sheet = nil
    }
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    ///A custom parameter attribute that constructs views from closures.
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .apple:
            AppleView()
        case .banana:
            BananaView()
        case .carrot:
            CarrotView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .lemon:
            NavigationStack {
                LemonView()
            }
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .olive:
            NavigationStack() {
                OliveView()
            }
        }
    }
}
