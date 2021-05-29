//
//  DailyForecastView.swift
//  Weather
//
//  Created by Francisco Barrios on 29/5/2564 BE.
//

import SwiftUI

struct DailyForecastView: View {
    
    var body: some View {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                DailyForecastSingleView(
                    tempMax: 21,
                    tempMin: 17,
                    icon: "",
                    description: ""
                )
            }.background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.black.opacity(0.2))
                    .shadow(radius: 5)
            )
    }
}

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastView()
    }
}
