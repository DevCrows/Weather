//
//  WeatherMapper.swift
//  Weather
//
//  Created by Francisco Barrios on 23/5/2564 BE.
//

import Foundation

class WeatherMapper {
    
    func mapper(mainId: Int) -> WeatherType {
        switch mainId {
        case 200: return WeatherType.thunderstormWithLightRain(200, "sdssd")
        case 201: return WeatherType.thunderstormWithRain(201, "sdssd")
        default: return WeatherType.thunderstormWithRain(201,"")
        }
    }
}
