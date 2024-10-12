//
//  WeatherManager.swift
//  WISHApp
//
//  Created by Sergey Lavorv on 2024-10-12.
//

import Foundation
import CoreLocation

class WeatherManager {
    // HTTP request to get the current weather depending on the coordinates we got from LocationManager
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> WeatherBody {
        guard let url = URL(string: "https://api.weatherapi.com/v1/current.json?key=bbf4cb5087124d55bc305920241210&q=\(latitude),\(longitude)&aqi=no")
        else { fatalError("Missing URL") }

        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        
        let decodedData = try JSONDecoder().decode(WeatherBody.self, from: data)
        
        return decodedData
    }
}

struct WeatherBody: Decodable {
    var location: LocationResponse
    var current: WeatherResponse
    
    struct LocationResponse: Decodable {
        var name: String
        var region: String
        var country: String
        var lat: Double
        var lon: Double
        var tz_id: String
        var localtime_epoch: Int
        var localtime: String
    }
    
    struct WeatherResponse: Decodable {
        var last_updated_epoch: Int
        var last_updated: String
        var temp_c: Double
        var temp_f: Double
        var is_day: Int
        var condition: ConditionResponse
        var wind_mph: Double
        var wind_kph: Double
        var wind_degree: Int
        var wind_dir: String
        var pressure_mb: Double
        var pressure_in: Double
        var precip_mm: Double
        var precip_in: Double
        var humidity: Int
        var cloud: Int
        var feelslike_c: Double
        var feelslike_f: Double
        var windchill_c: Double
        var windchill_f: Double
        var heatindex_c: Double
        var heatindex_f: Double
        var dewpoint_c: Double
        var dewpoint_f: Double
        var vis_km: Double
        var vis_miles: Double
        var uv: Double
        var gust_mph: Double
        var gust_kph: Double
    }

    struct ConditionResponse: Decodable {
        var text: String
        var icon: String
        var code: Int
    }
}
