//
//  separador_feh.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/9/26.
//

/// ESTE ES UN SEPARADOR CON REPRESENTACIÓN DE FIRE EMBLEM HEROES

import SwiftUI

struct SeparadorFEH: View {
    var body: some View {
        Rectangle()
            .foregroundStyle(Color("FEHGold"))
            .frame(height: 2)
        
        Text("✦︎")
            .foregroundStyle(Color("FEHGold"))
        
        Rectangle()
            .foregroundStyle(Color("FEHGold"))
            .frame(height: 2)
    }
}

#Preview {
    SeparadorFEH()
        .padding()
        .background(Color("FEHBackground"))
}
