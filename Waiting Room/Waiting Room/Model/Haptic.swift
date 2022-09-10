//
//  Haptic.swift
//  Waiting Room
//
//  Created by Gabrielle Clarke on 9/9/22.
//

import Foundation
import SwiftUI

struct Haptic: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
