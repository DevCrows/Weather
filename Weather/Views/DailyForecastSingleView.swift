//
//  DailyForecastSingleView.swift
//  Weather
//
//  Created by Francisco Barrios on 29/5/2564 BE.
//

import SwiftUI

struct DailyForecastSingleView: View {
    
    @State var dayOfTheMonth: String
    @State var dayOfTheWeek: String
    @State var tempMax: Int
    @State var tempMin: Int
    @State var icon: String
    @State var description: String
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text(dayOfTheMonth)
                Text(dayOfTheWeek)
            }.padding(.top)
            Divider()
                .frame(width: 80, height: 5)
            HStack{
                Text(String(tempMax) + "°").bold()
                Text("/")
                Text(String(tempMin) + "°")
            }
            Image(icon)
                .resizable()
                .frame(width: 48, height: 48)
            Text(description)
                .padding(.bottom,16)
                .lineLimit(1)
        }.frame(width: 80, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct DailyForecastSingleView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastSingleView(
            dayOfTheMonth: "1",
            dayOfTheWeek: "Mon",
            tempMax: 21,
            tempMin: 17,
            icon: "broken_clouds_night",
            description: "Cloudy"
        )
    }
}
