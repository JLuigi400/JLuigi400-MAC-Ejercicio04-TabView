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
        ZStack {
            // Fondo general de la pantalla
            Color("FEHBackground")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("BUZÓN DE MENSAJES")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color("FEHText"))
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                // Aqui ira todo el contenido desplazado con un Scroll de lista (Probar entre LazyVStack o un ScrollView)
                LazyVStack {
                    ForEach(mensajes) { mensaje in
                        MensajeVista(mensaje: mensaje)
                    }
                }
                .padding(.vertical)
            }
        }
        /*
        LazyVStack {
            ForEach(mensajes) { mensaje in
                MensajeVista(mensaje: mensaje)
            }
        }
        */
    }
}

#Preview {
    MensajesPantalla(
        mensajes: conversacionesFalsas[0].mensajes
    )
}
