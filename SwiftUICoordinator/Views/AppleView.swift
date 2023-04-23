//
//  AppleView.swift
//  SwiftUICoordinator
//
//  Created by Gokul on 23/04/23.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Push BananaView🍌") {
                coordinator.push(.banana)
            }
            Button("Present LemonView🍋") {
                coordinator.present(sheet: .lemon)
            }
            Button("Present OliveView🫒") {
                coordinator.present(fullScreenCover: .olive)
            }
        }
        .navigationTitle("AppleView🍎")
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
