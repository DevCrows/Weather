//
//  Weather.swift
//  Weather
//
//  Created by Francisco Barrios on 22/5/2564 BE.
//

import Foundation

struct Forecast: Codable{
    var weather: [Weather]
    var main: Main
    var sys: Sys
    var timezone: Int?
    var name: String
}

struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

struct Main: Codable {
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Int
    var humidity: Int
}

struct Sys: Codable {
    var country: String
    var sunrise: Int
    var sunset: Int
}

class WeatherServiceCurrentDay{
    func getWeather(completion: @escaping (Forecast)->()){
        guard let url = URL(string: BASE_URL + "/data/2.5/weather?q=Bangkok,TH&appid=" + API_KEY) else { return }
        URLSession.shared.dataTask(with: url){ (data, _, _) in
            let forecast = try! JSONDecoder().decode(Forecast.self, from: data!)
            DispatchQueue.main.async {
                completion(forecast)
            }
        }.resume()
    }
}

