//
//  conversaciones_stack_pantallas.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI

struct ConversacionesControlVista: View {
    @Environment(MensajesControl.self) var mensajes_control
    
    var body: some View {
        NavigationStack {
            
            
            ForEach(mensajes_control.conversaciones) { conversacion in
                NavigationLink {
                    Text("\(conversacion.mensajes)")
                }
                label: {
                    Text("Conversacion entre \(conversacion.receptor) y \(conversacion.remitente)")
                }
                
            }
        }
    }
}

#Preview {
    ConversacionesControlVista()
        .environment(MensajesControl())
}
