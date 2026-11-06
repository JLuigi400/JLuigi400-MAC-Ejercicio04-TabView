//
//  controlador_mensajes.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI

@Observable
class MensajesControl{
    var conversaciones: [Conversacion]
    
    init(){
        conversaciones = conversacionesFalsas
    }
}
