//
//  mensaje_vista.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/9/26.
//

import SwiftUI

struct MensajeVista: View {
    
    let mensaje: Mensaje
    
    var MensajePropio: Bool {
        mensaje.remitente == "Fixer"
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            HStack {
                if MensajePropio {
                    Spacer()
                }
                
                Text(mensaje.remitente ?? "Desconocido")
                    .font(.headline)
                    .foregroundStyle(Color("FEHSecondary"))
                
                if !MensajePropio {
                    Spacer()
                }
            }
            
            SeparadorFEH(
                estilo: .discreto,
                color: Color("FEHAccent")
            )
            
            Text(mensaje.cuerpo)
                .font(.body)
                .foregroundStyle(Color("FEHText"))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(Color("FEHPanel"))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("FEHAccent"), lineWidth: 1)
        )
        .padding(.horizontal)
    }
}

#Preview {
    MensajeVista(
        mensaje: Mensaje(
            remitente: "Fixer",
            receptor: "Mauricio",
            cuerpo: "Todo listo para iniciar la misión."
        )
    )
}
