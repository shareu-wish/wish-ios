//
//  SizingView.swift
//  WISH
//
//  Created by Sergey on 19.11.2024.
//

import SwiftUI

struct SizingView<T: View>: View {
    
    let view: T
    @Binding var height: CGFloat
    
    init(height: Binding<CGFloat>, @ViewBuilder view: () -> T) {
        self.view = view()
        self._height = height
    }
    var body: some View {
        view.background(
            GeometryReader { proxy in
                Color.clear
                    .preference(key: SizePreferenceKey.self, value: proxy.size)
            }
        )
        .onPreferenceChange(SizePreferenceKey.self) { preferences in
            height = preferences.height
        }

    }
    
    func size(with view: T, geometry: GeometryProxy) -> T {
        height = geometry.size.height
        return view
    }
}

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
