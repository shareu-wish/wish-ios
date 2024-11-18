//
//  Images.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import Foundation
import SwiftUI

struct Images {
    static let qr = Image(systemName: "qrcode")
    static let map = Image(systemName: "map")
    static let weather = Image(systemName: "cloud")
    static let profile = Image(systemName: "person")
    
    static let plus = Image(systemName: "plus")
    static let trash = Image(systemName: "trash")
    static let back = Image(systemName: "chevron.backward")
    
    static let on = Image(systemName: "checkmark.circle.fill")
    static let off = Image(systemName: "circle")
    static func on_off(_ isOn: Bool) -> Image {
        return (isOn ? Images.on : Images.off)
    }
}
