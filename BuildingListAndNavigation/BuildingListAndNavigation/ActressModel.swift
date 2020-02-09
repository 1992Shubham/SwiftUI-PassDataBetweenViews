//
//  ActressModel.swift
//  BuildingListAndNavigation
//
//  Created by SHUBHAM AGARWAL on 25/01/20.
//  Copyright © 2020 SHUBHAM AGARWAL. All rights reserved.
//

import Foundation
import SwiftUI

struct ActressModel: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var dateOfBirth: String
    var state: String
    var city: String
    var imageName: String
    var isFavorite: Bool
}

extension ActressModel {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
