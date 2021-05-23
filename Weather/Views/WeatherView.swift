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
    @Binding var show: Bool
    
    var body: some View {
        
        ZStack(alignment: .center){
            
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            //.blur(radius: 12)
            
            Button(action: {
                self.show = true
            }, label: {
                    Image(systemName: "gearshape")
                        .resizable()
                        .foregroundColor(.secondary)
                        .frame(width: 28, height: 28)
                }
            )
            .buttonStyle(PlainButtonStyle())
            .offset(x:400, y:-270)
            
            VStack (alignment: .leading){
                HStack{
                    Text(city + ",")
                        .font(Font.custom("Avenir-Light", size: 32))
                        .foregroundColor(.white)
                    Text(country)
                        .font(Font.custom("Avenir-Light", size: 32))
                        .foregroundColor(.white)
                }
                HStack(alignment: .center){
                    Text(temp + "°")
                        .font(Font.custom("Avenir-Light", size: 108))
                        .foregroundColor(.white)
                    Image("wsymbol_0018_cloudy_with_heavy_rain")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80, alignment: .center)
                }
                
                Text(description)
                    .font(Font.custom("Avenir-Light", size: 28))
                    .foregroundColor(.white)
                
            }
            .offset(x:-220, y:120)
            .onAppear(){
                Api().getWeather{ (forecast) in
                    var currentTemp = forecast.main.temp
                    currentTemp = round(currentTemp/10)
                    temp = String(format: "%.0f", currentTemp)
                    description = forecast.weather[0].description
                    city = forecast.name
                    country = forecast.sys.country
                    
                    //forecast.weather[0].icon
                    
                    let mapper = WeatherMapper().mapper(mainId: 200)
                    
                    print(mapper)
                    
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
            show: .constant(true)
        ).frame(width: 860, height: 600)
    }
}
