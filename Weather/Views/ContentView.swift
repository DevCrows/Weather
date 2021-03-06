//
//  ContentView.swift
//  Weather
//
//  Created by Francisco Barrios on 22/5/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var temp: String = ""
    @State var main: String = ""
    @State var description: String = ""
    @State var country: String = ""
    @State var city: String = ""
    @State var backgroundImage: String = "bg"
    @State var fiveDays: Forecast5Days? = nil
    @State var icon: String = "dunno"
    
    @State private var show = false
    
    var body: some View {
        
        if !show {
            WeatherView(
                temp: temp,
                description: description,
                icon: icon,
                country: country,
                city: city,
                backgroundImage: backgroundImage,
                show: $show
            )
            .frame(width: WINDOW_WIDHT, height: WINDOW_HEIGHT)
            .transition(
                AnyTransition.move(edge: .leading)
            ).animation(.easeInOut)
        }
        
        if show {
            SettingsView(show: $show)
                .frame(width: WINDOW_WIDHT, height: WINDOW_HEIGHT)
                .transition(
                    AnyTransition.move(edge: .leading)
                ).animation(.easeInOut)
        }
    }
}
