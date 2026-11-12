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
        ZStack {
            // Fondo general de la app
            Color("FEHBackground")
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                Text("PANEL DE CONTROL - HOGAR")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color("FEHText"))
                
                // Panel estético estilo FEH
                VStack(spacing: 12) {
                    Text("Bienvenido al Cuartel General")
                        .font(.headline)
                        .foregroundColor(Color("FEHPrimary"))
                    
                    Text("Estado del sistema: Operativo y listo para misiones.")
                        .font(.subheadline)
                        .foregroundColor(Color("FEHText"))
                        .multilineTextAlignment(.center)
                }
                .padding(20)
                .background(Color("FEHPanel"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("FEHAccent"), lineWidth: 1.5)
                )
                .padding(.horizontal)
            }
        }

    }
}

#Preview {
    ARPantalla()
}


/*
 import SwiftUI

 struct ArKitPantalla: View {
     var body: some View {
    }
 }
 */
