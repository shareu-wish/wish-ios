//
//  WelcomeView.swift
//  WISHApp
//
//  Created by Stephanie Diep on 2021-11-30.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .padding()
                Text("WISH")
                    .bold()
                    .font(.title)
                
                Text("Укажите свое текущее местоположение, чтобы узнать погоду в вашем регионе")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            
            // LocationButton from CoreLocationUI framework imported above, allows us to requestionLocation
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundColor(.white)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
