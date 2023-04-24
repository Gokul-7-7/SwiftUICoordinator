//
//  CoordinatorView.swift
//  SwiftUICoordinator
//
//  Created by Gokul on 23/04/23.
//

import SwiftUI

struct CoordinatorView: View {
    ///A property wrapper type that instantiates an observable object.
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            //1) Build the initial page, ie. AppleView
            coordinator.build(page: .apple)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
            ///Associates a destination view with a presented data type for use within a navigation stack.
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
            ///Presents a sheet using the given item as a data source for the sheet’s content.
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.build(fullScreenCover: fullScreenCover)
                }
            ///Presents a modal view that covers as much of the screen as possible using the binding you provide as a data source for the sheet’s content.
        }
        .environmentObject(coordinator)
        ///coordinator will be present in all of our views.
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
