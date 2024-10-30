//
//  Colors.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import Foundation
import SwiftUI

struct Colors {
   
    // Фон
    static let back = Color.black
    static let uiBack = UIColor.black
    static let clear = Color.clear
    static let accent = Color.blue
    static let system = UIColor.systemBackground

    // Текст
    static let inactive = Color.gray
    static let active = Color.white
    static let text = Color.white
    static let danger = Color.red
    
    // Переключатели
    static let on = Color(UIColor.systemGreen)
    static let off = Color(UIColor.darkGray)
    static func on_off(_ isOn: Bool) -> Color {
        return (isOn ? on : off)
    }
    static let thumb = Color.white
}
