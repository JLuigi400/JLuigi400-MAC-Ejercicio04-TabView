//
//  pantalla_mensajes.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/9/26.
//

import SwiftUI

struct MensajesPantalla: View {
    let mensajes: [Mensaje]
    
    var body: some View {
        ForEach(mensajes) { mensaje in
            MensajeVista(mensaje: mensaje)
        }
    }
}

#Preview {
    MensajesPantalla(
        mensajes: conversacionesFalsas[0].mensajes
    )
}
