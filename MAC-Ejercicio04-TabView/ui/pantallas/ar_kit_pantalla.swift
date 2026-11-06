//
//  ar_kit_pantalla.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI
import RealityKit

struct ARPantalla: View {
    var body: some View {
        /// RealityView pide un parametro para que realice su funcion, en este caso
        /// QUE pantalla quiere mostrarse de momento.
        
        RealityView { escenario in
            escenario.camera = .spatialTracking
        }
    }
}

#Preview {
    ARPantalla()
}
