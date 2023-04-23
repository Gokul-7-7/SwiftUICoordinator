//
//  Page.swift
//  SwiftUICoordinator
//
//  Created by Gokul on 23/04/23.
//

import Foundation

enum Page: String, Identifiable {
    case apple
    case banana
    case carrot
    
    var id: String {
        self.rawValue
    }
}
