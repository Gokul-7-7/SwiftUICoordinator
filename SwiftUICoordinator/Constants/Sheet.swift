//
//  Sheet.swift
//  SwiftUICoordinator
//
//  Created by Gokul on 23/04/23.
//

import Foundation

enum Sheet: String, Identifiable {
    case lemon
    
    var id: String {
        self.rawValue
    }
}
