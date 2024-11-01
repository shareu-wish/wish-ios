//
//  TabWeatherView.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import SwiftUI

struct TabWeatherView: View {
    
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: WeatherBody?
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                if let weather = weather {
                    NavigationView {
                        WeatherView(weather: weather)
                    }
                } else {
                    NavigationView {
                        LoadingView()
                            .task {
                                do {
                                    weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                                } catch {
                                    print("Error getting weather: \(error)")
                                }
                            }
                    }
                }
            } else {
                if locationManager.isLoading {
                    NavigationView {
                        LoadingView()
                    }
                } else {
                    NavigationView {
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    TabWeatherView()
}
