//
//  mensaje_vista.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/9/26.
//

import SwiftUI

struct MensajeVista: View {
    let mensaje: Mensaje
    
    var body: some View {
        Text("Remitente: \(mensaje.remitente ?? "ERROR404 - USUARIO NO ENCONTRADO")")
            .padding(.horizontal)
        // NOTA es necesario aclarar lo siguiente. ! = Que nunca habra un comentario tipo nil / ?? indicar que si el valor es nil, indique al lado.
        Text("Receptor: \(mensaje.receptor ?? "ERROR404 - RECEPTOR NO ENCONTRADO.")")
        Text("Mensaje: \(mensaje.cuerpo)")
    }
}

#Preview {
    MensajeVista(mensaje: Mensaje(remitente: "Ricardo", receptor: "Mauricio", cuerpo: "Tus dibujos son una porqueria, no te quiero mucho"))
}
