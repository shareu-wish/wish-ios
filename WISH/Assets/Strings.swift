//
//  Strings.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import Foundation

enum Strings {
    static let empty = ""
    static let space = " "
    static let mapURL = "https://shareu.ru/station-map"
    static let authURL = "https://shareu.ru/auth"
    
    enum Title {
        static let map = String(localized: "Map")
        static let weather = String(localized: "Weather")
        static let profile = String(localized: "Profile")
    }
}
