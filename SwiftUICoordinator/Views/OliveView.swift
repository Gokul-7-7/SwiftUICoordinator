//
//  OliveView.swift
//  SwiftUICoordinator
//
//  Created by Gokul on 23/04/23.
//

import SwiftUI

struct OliveView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
        }
        .navigationTitle("OliveView 🫒")
    }
}

struct OliveView_Previews: PreviewProvider {
    static var previews: some View {
        OliveView()
    }
}
