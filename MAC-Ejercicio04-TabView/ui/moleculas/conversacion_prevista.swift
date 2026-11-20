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
        HStack(spacing: 12) {
            
            Image(systemName: "scroll.fill")
                .font(.title2)
                .foregroundStyle(Color("FEHSecondary"))
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text(conversacion.receptor)
                    .font(.headline)
                    .foregroundStyle(Color("FEHText"))
                
                Text("Correspondencia de \(conversacion.remitente)")
                    .font(.caption)
                    .foregroundStyle(Color("FEHSecondary"))
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundStyle(Color("FEHAccent"))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("FEHPanel"))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("FEHAccent"), lineWidth: 1)
        )
    }
}

#Preview {
    ConversacionPrevista(
        conversacion: conversacionesFalsas[0]
    )
    .padding()
}
