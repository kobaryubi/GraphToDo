//
//  NavigationModel.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/25.
//

import Foundation
import SwiftUI

class NavigationModel: ObservableObject {
    @Published var path = NavigationPath()
}
