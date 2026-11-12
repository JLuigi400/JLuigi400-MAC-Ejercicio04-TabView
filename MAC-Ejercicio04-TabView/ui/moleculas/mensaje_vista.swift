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
        ((mensaje.remitente?.contains("Fixer")) != nil)
    }
    
    var body: some View {
        HStack {
            // Si el mensaje es del Remitente, coloca un spacer de izquierda para moverse a la derecha
            if MensajePropio {
                Spacer(minLength: 40)
            }
            
            VStack (alignment: MensajePropio ? .trailing : .leading, spacing: 4) {
                
                // Remitente
                Text("Remitente: \(mensaje.remitente ?? "ERROR 404 - USUARIO NO ENCONTRADO")")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(Color("FEHPrimary"))
                
                // Receptor
                Text("Receptor: \(mensaje.receptor ?? "ERROR404 - RECEPTOR NO ENCONTRADO.")")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color("FEHSecondary"))
                
                Text("Mensaje: \(mensaje.cuerpo)")
                    .font(.subheadline)
                    .foregroundColor(Color("FEHText"))
                    .multilineTextAlignment(.leading)
                    .padding(12)
                    .background(Color("FEHPanel"))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("FEHAccent"), lineWidth: 1)
                    )
            }
            if !MensajePropio {
                Spacer(minLength: 40)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 4)
    }
}

#Preview {
    MensajeVista(mensaje: Mensaje(remitente: "Fixer", receptor: "Mauricio", cuerpo: "Tus dibujos son una porqueria, no te quiero mucho"))
}
