//
//  SettingsView.swift
//  Weather
//
//  Created by Francisco Barrios on 22/5/2564 BE.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var show: Bool
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Button("Back"){
                self.show = false
            }
            Text("this is a text")
        }
        .frame(maxWidth: 860, maxHeight: 600, alignment: .leading)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(show: .constant(true))
    }
}
