//
//  WeatherType.swift
//  Weather
//
//  Created by Francisco Barrios on 23/5/2564 BE.
//

import Foundation

enum WeatherType: Int {
    
    case thunderstormWithLightRain = 200
    case thunderstormWithRain = 201
    case thunderstormWithHeavyRain = 202
    case lightThunderstorm = 210
    case thunderstorm = 211
    case heavyThunderstorm = 212
    case raggedThunderstorm = 221
    case thunderstormWithLightDrizzle = 230
    case thunderstormWithDrizzle = 231
    case thunderstormWithHeavyDrizzle = 232
    
    case lightIntensityDrizzle = 300
    case drizzle = 301
    case heavyIntensityDrizzle = 302
    case lightIntensityDrizzleRain = 310
    case drizzleRain = 311
    case heavyIntensityDrizzleRain = 312
    case showerRainAndDrizzle = 313
    case showerDrizzle = 314
    
    case lightRain = 500
    case moderateRain = 501
    case heavyIntensityRain = 502
    case veryHeavyRain = 503
    case extremeRain = 504
    case freezingRain = 511
    case lightIntensityShowerRain = 520
    case showerRain = 521
    case heavyIntensityShowerRain = 522
    case raggedShowerRain = 531
    
    case clearSky = 800
    
    case fewClouds = 801
    case scatteredClouds = 802
    case brokenClouds = 803
    case overcastClouds = 804

    case snow = 601
    case mist = 701
}
