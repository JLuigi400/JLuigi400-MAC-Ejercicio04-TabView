//
//  separador_feh.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/9/26.
//

/// ESTE ES UN SEPARADOR CON REPRESENTACIÓN DE FIRE EMBLEM HEROES

import SwiftUI

// Aqui se realiza una separacion de 3 estilos en un Case
enum EstiloSeparadorFEH {
    case clasico
    case ornamental
    case discreto
}

struct SeparadorFEH: View {
    // estilo = Es donde iran el Switch Case1
    var estilo: EstiloSeparadorFEH = .clasico
    var color: Color = Color("FEHSecondary")
    
    var body: some View {
        Group {
            switch estilo {
            case .clasico:
                HStack {
                    linea()
                    
                    Image(systemName: "diamond.fill")
                        .foregroundStyle(color)
                    
                    linea()
                }
            case .ornamental:
                HStack {
                    linea()
                    
                    Image(systemName: "star.fill")
                        .foregroundStyle(color)
                    
                    linea()
                }
            case .discreto:
                HStack {
                    linea()
                }
            }
        }
    }
    
    private func linea() -> some View {
        Rectangle()
            .foregroundStyle(color)
            .frame(height: 2)
    }
}

#Preview {
    VStack(spacing: 25) {
        SeparadorFEH(
            estilo: .clasico,
            color: Color("FEHPrimary")
        )
        
        SeparadorFEH(
            estilo: .ornamental,
            color: Color("FEHSecondary")
        )
        
        SeparadorFEH(
            estilo: .discreto,
            color: Color("FEHAccent")
        )
    }
    .padding()
}
