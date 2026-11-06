//
//  conversacion.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import Foundation

struct Conversacion: Identifiable {
    var id = UUID()
    
    var remitente: String
    var receptor: String
    
    var mensajes: [Mensajes]
}
