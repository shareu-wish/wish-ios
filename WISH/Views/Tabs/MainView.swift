//
//  MainView.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import SwiftUI

struct MainView: View {
    
    @State var selection = Set<UUID>()
    @State var uiTabarController: UITabBarController?
    
    var body: some View {
        TabView(selection: $selection) {
            TabContainer(
                view: TabQRCodeView(),
                title: Strings.Title.qr,
                icon: Images.qr,
                tab: Tab.qr
            )
            TabContainer(
                view: TabMapView(),
                title: Strings.Title.map,
                icon: Images.map,
                tab: Tab.map
            )
            TabContainer(
                view: TabWeatherView(),
                title: Strings.Title.weather,
                icon: Images.weather,
                tab: Tab.weather
            )
            TabContainer(
                view: TabProfileView(),
                title: Strings.Title.profile,
                icon: Images.profile,
                tab: Tab.profile
            )
        }
        .colorScheme(.dark)
        .accentColor(Colors.accent)
    }
}

#Preview {
    MainView()
}
