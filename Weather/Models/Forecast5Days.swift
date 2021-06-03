//
//  Forecast5Days.swift
//  Weather
//
//  Created by Francisco Barrios on 3/6/2564 BE.
//

import Foundation

struct Forecast5Days: Decodable {
    var city: City?
    var cod: String
    var message: Double
    var cnt: Int
    var list: [ForecastDay]
}

struct City: Codable {
    var id: Int
    var name: String
    var country: String
    var timezone: Int?
}

struct ForecastDay: Codable  {
    var dt: Int
    var sunrise: Int
    var sunset: Int
    var temp: Temperature
    var pressure: Double
    var humidity: Double
    var weather: [Weather]
    var speed: Double
    var deg: Double
}

struct Temperature: Codable  {
    var day: Double
    var min: Double
    var max: Double
}

//https://api.openweathermap.org/data/2.5/forecast/daily?q=Bangkok,TH&cnt=5&appid=02735b3ab7109f96e982d9a42ae2a22e
class WeatherService5DaysForecast{
    func getForecast(completion: @escaping (Forecast5Days)->()){
        guard let url = URL(string: BASE_URL + "/data/2.5/forecast/daily?q=Bangkok,TH&cnt=5&appid=" + API_KEY) else { return }
        URLSession.shared.dataTask(with: url){ (data, _, _) in
            
            
            let forecast5Days = try! JSONDecoder().decode(Forecast5Days.self, from: data!)
            DispatchQueue.main.async {
                completion(forecast5Days)
            }
        }.resume()
    }
}
 
