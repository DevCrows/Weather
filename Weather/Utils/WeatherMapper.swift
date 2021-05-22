//
//  WeatherMapper.swift
//  Weather
//
//  Created by Francisco Barrios on 23/5/2564 BE.
//

import Foundation

class WeatherMapper {
    func mapper(type: Int) -> WeatherType {
        
        switch type {
        case 800:
            return     WeatherType.clearSky
        default:
            return WeatherType.clearSky
        }
    }
}
