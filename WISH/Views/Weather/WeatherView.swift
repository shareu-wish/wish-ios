//
//  WeatherView.swift
//  WISHApp
//
//  Created by Sergey Lavorv on 2024-10-12.
//

import SwiftUI

struct WeatherView: View {
    var weather: WeatherBody
    var colorSceme: ColorScheme?
    
    init(weather: WeatherBody){
        self.weather = weather
        self.colorSceme = (weather.current.is_day == 0) ? .light : .dark
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(weather.location.name)
                        .bold()
                        .font(.title)
                    Text("\(weather.location.region), \(weather.location.country)")
                        .bold()
                        .font(.subheadline)
                    
                    Text("Сегодня, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        AsyncImage(url: URL(string: "https:\(weather.current.condition.icon)")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 64)
                        } placeholder: {
                            ProgressView()
                        }.frame(width:64, height:64)
                        
                        Text(weather.current.condition.text)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    HStack {
                        WeatherRow(logo: "cloud", name: "Облачность", value: "\(weather.current.cloud) %")
                        
                        Spacer()
                        
                        Text(weather.current.feelslike_c.roundDouble() + "°")
                            .font(.system(size: 100))
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    
                    HStack {
                        WeatherRow(logo: "thermometer", name: "Минимум", value: ((weather.current.temp_c - 1).roundDouble() + ("°")))
                        Spacer()
                        WeatherRow(logo: "thermometer", name: "Максимум", value: ((weather.current.temp_c + 1).roundDouble() + "°"))
                    }
                    
                    HStack {
                        WeatherRow(logo: "wind", name: "Скорость ветра", value: (weather.current.wind_mph.roundDouble() + " м/с"))
                        Spacer()
                        WeatherRow(logo: "humidity", name: "Влажность", value: "\(weather.current.humidity)%")
                    }
                    
                    Spacer()
                    if (weather.current.humidity > 50) {
                        Text("Возьмите с собой зонт")
                            .bold()
                            .font(.title)
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .navigationBarTitle(Text(""), displayMode: .inline)
        .preferredColorScheme(colorSceme)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
