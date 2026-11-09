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
        Text("Conversación entre \(conversacion.remitente) & \(conversacion.receptor)")
    }
}

#Preview {
    ConversacionPrevista(conversacion: conversacionesFalsas[0])
}
