//
//  DailyForecastSingleView.swift
//  Weather
//
//  Created by Francisco Barrios on 29/5/2564 BE.
//

import SwiftUI

struct DailyForecastSingleView: View {
    
    @State var tempMax: Int
    @State var tempMin: Int
    @State var icon: String
    @State var description: String
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("01")
                Text("Mon")
            }.padding(.top)
            Divider()
                .frame(width: 90, height: 5)
            HStack{
                Text(String(tempMax) + "°").bold()
                Text("/")
                Text(String(tempMin) + "°")
            }
            Image(icon)
                .resizable()
                .frame(width: 48, height: 48)
            Text(description)
                .padding(.bottom)
        }
    }
}

struct DailyForecastSingleView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastSingleView(
            tempMax: 21,
            tempMin: 17,
            icon: "broken_clouds_night",
            description: "Cloudy"
        )
    }
}
