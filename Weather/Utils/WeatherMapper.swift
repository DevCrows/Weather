//
//  WeatherMapper.swift
//  Weather
//
//  Created by Francisco Barrios on 23/5/2564 BE.
//

import Foundation

class WeatherImageMapper {
    
    func iconMapper(icon: String) -> String {
        switch icon {
        case "01d": return "clear_sky_day"
        case "01n": return "clear_sky_night"
        case "02d": return "few_clouds_day"
        case "02n": return "few_clouds_night"
        case "03d": return "scattered_clouds_day"
        case "03n": return "scattered_clouds_night"
        case "04d": return "broken_clouds_day"
        case "04n": return "broken_clouds_night"
        case "09d": return "shower_rain_day"
        case "09n": return "shower_rain_night"
        case "10d": return "rain_day"
        case "10n": return "rain_night"
        case "11d": return "thunderstorm_day"
        case "11n": return "thunderstorm_night"
        case "13d": return "snow_day"
        case "13n": return "snow_night"
        case "50d": return "mist_day"
        case "50n": return "mist_night"
        default: return "dunno"
        }
    }
    
    func backgroundMapper(icon: String) -> String {
        switch icon {
        case "01d": return "bg_clear_sky_day"
        case "01n": return "bg_clear_sky_night"
        case "02d": return "bg_broken_clouds_day"
        case "02n": return "bg_broken_clouds_night"
        case "03d": return "bg_broken_clouds_day"
        case "03n": return "bg_broken_clouds_night"
        case "04d": return "bg_broken_clouds_day"
        case "04n": return "bg_broken_clouds_night"
        case "09d": return "bg_rain_day"
        case "09n": return "bg_rain_night"
        case "10d": return "bg_rain_day"
        case "10n": return "bg_rain_night"
        case "11d": return "bg_thunderstorm_day"
        case "11n": return "bg_thunderstorm_night"
        case "13d": return "bg_snow_day"
        case "13n": return "bg_snow_night"
        case "50d": return "bg_mist_day"
        case "50n": return "bg_mist_night"
        default: return "bg"
        }
    }
}
