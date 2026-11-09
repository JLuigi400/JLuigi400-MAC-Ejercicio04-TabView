//
//  controlador_hogar_vista.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI

struct ControlHogarVista: View {
    @Environment(MensajesControl.self) var mensajeria
    
    var body: some View {
        TabView {
            Tab("Crear", systemImage: "plus.circle"){
                Text("Etiqueta de una vista")
            }
            
            Tab("Hogar", systemImage: "apple.homekit"){
                ARPantalla()
            }
            
            Tab("Mensajes", systemImage: "message"){
                ConversacionesControlVista()
            }
            .badge(mensajeria.conversaciones.count)
            
            Tab("Configuracion", systemImage: "gear"){
                Configuracion()
            }
        }
    }
}

#Preview {
    ControlHogarVista()
        .environment(MensajesControl())
}
