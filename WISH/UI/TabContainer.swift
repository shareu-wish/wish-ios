//
//  TabContainer.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import SwiftUI

import SwiftUI

struct TabContainer<Container: View>: View {
    
    let view: Container
    let title: String
    let icon: Image
    let tab: Tab
    
    init(view: Container, title: String, icon: Image, tab: Tab) {
        self.view = view
        self.title = title
        self.icon = icon
        self.tab = tab
    }
    
    var body: some View {
        view.tabItem {
            Label {
                Text(title)
            } icon: {
                icon
            }
        }
        .tag(tab)
    }
}

#Preview {
    TabContainer(
        view: TabProfileView(),
        title: Strings.Title.profile,
        icon: Images.profile,
        tab: Tab.profile
    )
}
