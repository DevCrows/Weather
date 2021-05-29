//
//  DailyForecastSingleView.swift
//  Weather
//
//  Created by Francisco Barrios on 29/5/2564 BE.
//

import SwiftUI

struct DailyForecastSingleView: View {
    
    
    
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("01")
                Text("Mon")
            }.padding(.top)
            Divider()
                .frame(width: 80, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                Text("21°").bold()
                Text("/")
                Text("17°")
            }
            Image("broken_clouds_night")
                .resizable()
                .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Cloudy").padding(.bottom)
        }
    }
}

struct DailyForecastSingleView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastSingleView()
    }
}
