//
//  conversacion_prevista.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/9/26.
//

import SwiftUI

struct ConversacionPrevista: View {
    let conversacion: Conversacion
    
    var body: some View {
        HStack {
            Spacer()
            Circle()
                .fill(Color("FEHAccent"))
                .frame(width: 40, height: 40)
                .overlay (
                    Text(String(conversacion.remitente.prefix(1)))
                        .font(.headline)
                        .foregroundStyle(Color("FEHBackground"))
                )
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Mensaje de \(conversacion.remitente) para \(conversacion.receptor)")
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(Color("FEHText"))
                    
                    Spacer()
                }
            }
            .padding(12)
            .background(Color("FEHPanel"))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("FEHAccent"), lineWidth: 1)
            )
            Spacer()
        }
        //Text("Conversación entre \(conversacion.remitente) & \(conversacion.receptor)")
    }
}

#Preview {
    ConversacionPrevista(conversacion: conversacionesFalsas[0])
}
