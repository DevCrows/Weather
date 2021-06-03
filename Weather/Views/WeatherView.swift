//
//  WeatherText.swift
//  Weather
//
//  Created by Francisco Barrios on 22/5/2564 BE.
//

import SwiftUI

struct WeatherView: View {
    
    @State var temp: String
    @State var description: String
    @State var icon: String
    @State var country: String
    @State var city: String
    @State var backgroundImage: String
    @Binding var show: Bool
    
    var body: some View {
        
        HStack(alignment:.center) {
            VStack(alignment: .leading){
                HStack{
                    Text(city + ",")
                        .font(Font.custom("Avenir-Light", size: 32))
                        .foregroundColor(.white)
                    Text(country)
                        .font(Font.custom("Avenir-Light", size: 32))
                        .foregroundColor(.white)
                }
                HStack(alignment: .lastTextBaseline){
                    Text(temp + "°")
                        .font(Font.custom("Avenir-Light", size: 108))
                        .foregroundColor(.white)
                    Image(icon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 72, height: 72, alignment: .center)
                }
                Text(description)
                    .font(Font.custom("Avenir-Light", size: 28))
                    .foregroundColor(.white)
                
            }.padding(.all, 16)
            DailyForecastView()
        }
        .frame(width: WINDOW_WIDHT, height: WINDOW_HEIGHT)
        .background(
            Image(backgroundImage)
                .resizable()
        )
        .onAppear(){
            Api().getWeather{ (forecast) in
                
                let currentTemp = round(forecast.main.temp/10)
                temp = String(format: "%.0f", currentTemp)
                description = forecast.weather[0].description
                city = forecast.name
                country = forecast.sys.country
                icon = WeatherImageMapper().iconMapper(icon: forecast.weather[0].icon)
                backgroundImage = WeatherImageMapper().backgroundMapper(icon: forecast.weather[0].icon)
            }
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(
            temp: "21",
            description: "String",
            icon: "",
            country: "TH",
            city: "Bangkok",
            backgroundImage: "",
            show: .constant(true)
        ).frame(width: 860, height: 600)
    }
}
