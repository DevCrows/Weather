//
//  DailyForecastView.swift
//  Weather
//
//  Created by Francisco Barrios on 29/5/2564 BE.
//

import SwiftUI

struct DailyForecastView: View {
    
    @State var fiveDaysForecast: [ForecastDay]
    
    var body: some View {
    
        HStack(alignment: .center){
            
            ForEach(0 ..< fiveDaysForecast.count) {_ in
            
                DailyForecastSingleView(
                    dayOfTheMonth: "21",
                    dayOfTheWeek: "Mon",
                    tempMax: self.fiveDaysForecast[0].dt,
                    tempMin: 17,
                    icon: "rain_night",
                    description: "description"
                )
            }
        }.background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.black.opacity(0.2))
                .shadow(radius: 5)
        )
    }
}

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        
        let emptyArray = [ForecastDay]()
        
        DailyForecastView(
            fiveDaysForecast: emptyArray
        )
    }
}

