//
//  DailyForecastView.swift
//  Weather
//
//  Created by Francisco Barrios on 29/5/2564 BE.
//

import SwiftUI

struct DailyForecastView: View {
    var body: some View {
        HStack{
            DailyForecastSingleView()
            DailyForecastSingleView()
            DailyForecastSingleView()
            DailyForecastSingleView()
            DailyForecastSingleView()   
        }
    }
}

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastView()
    }
}
