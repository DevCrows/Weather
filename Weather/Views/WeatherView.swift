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
        
        ZStack{
            
            Image(backgroundImage)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 2)
            
            Button(action: {
                self.show = true
            }, label: {
                Image(systemName: "gearshape")
                    .resizable()
                    .foregroundColor(.secondary)
                    .frame(width: 28, height: 28)
            })
            .buttonStyle(PlainButtonStyle())
            .offset(x:400, y:-270)
            
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
                    
                    Divider().frame(width: 10, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    DailyForecastView().frame(alignment: .trailing).padding(.leading)
                }
                Text(description)
                    .font(Font.custom("Avenir-Light", size: 28))
                    .foregroundColor(.white)
                
            }
            .offset(x:-20, y:80)
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
        }.frame(maxWidth: 860, maxHeight: 600)
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
