//
//  MAC_Ejercicio04_TabViewApp.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI

@main
struct MAC_Ejercicio04_TabViewApp: App {
    @State var control_mensajes = MensajesControl()
    
    var body: some Scene {
        WindowGroup {
            ControlHogarVista()
                .environment(control_mensajes)
        }
    }
}
