//
//  configuracion_pantalla.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI

struct Configuracion: View {
    var body: some View {
        ZStack {
            Color("FEHBackground")
                .ignoresSafeArea()
                    
            VStack(alignment: .leading, spacing: 16) {
                Text("CONFIGURACIÓN")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color("FEHText"))
                    .padding(.horizontal)
                    .padding(.top, 10)
                        
                VStack(spacing: 12) {
                    HStack {
                        Text("Efectos de Sonido")
                            .foregroundColor(Color("FEHText"))
                        Spacer()
                        Text("ON")
                            .bold()
                            .foregroundColor(Color("FEHPrimary"))
                    }
                    .padding()
                    .background(Color("FEHPanel"))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("FEHAccent"), lineWidth: 1)
                    )
                            
                    HStack {
                        Text("Calidad Gráfica")
                            .foregroundColor(Color("FEHText"))
                        Spacer()
                        Text("Alta")
                            .bold()
                            .foregroundColor(Color("FEHPrimary"))
                    }
                    .padding()
                    .background(Color("FEHPanel"))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("FEHAccent"), lineWidth: 1)
                    )
                }
                .padding(.horizontal)
                        
                Spacer()
            }
        }
    }
}

#Preview {
    Configuracion()
}
