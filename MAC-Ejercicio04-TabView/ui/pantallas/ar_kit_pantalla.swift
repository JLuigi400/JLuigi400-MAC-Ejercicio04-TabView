//
//  ar_kit_pantalla.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI
import RealityKit

struct ARPantalla: View {
    
    @State private var estadoInvocacion = "Esperando invocación"
    @State private var iconoInvocacion = "sparkles"
    
    var body: some View {
        ZStack {
            
            Color("FEHBackground")
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                
                Text("ALTAR DE INVOCACIÓN")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color("FEHText"))
                
                SeparadorFEH(
                    estilo: .ornamental,
                    color: Color("FEHAccent")
                )
                .padding(.horizontal)
                
                RealityView { escenario in
                    escenario.camera = .spatialTracking
                }
                .background(Color("FEHPanel"))
                .cornerRadius(8)
                .overlay(
                    Image("FEHSummoningOrb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                )
                .padding(.horizontal)
                
                VStack(spacing: 10) {
                    Image(systemName: iconoInvocacion)
                        .font(.system(size: 28))
                        .foregroundStyle(Color("FEHPrimary"))
                    
                    Text(estadoInvocacion)
                        .font(.headline)
                        .foregroundStyle(Color("FEHText"))
                        .multilineTextAlignment(.center)
                }
                .padding()
                .background(Color("FEHPanel"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("FEHAccent"), lineWidth: 1)
                )
                .padding(.horizontal)
                
                Button("INVOCAR") {
                    estadoInvocacion = "Orbe cargándose..."
                    iconoInvocacion = "circle.hexagongrid.fill"
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        estadoInvocacion = "¡Héroe invocado!"
                        iconoInvocacion = "person.crop.circle.badge.checkmark"
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("FEHPrimary"))
                .foregroundStyle(Color("FEHBackground"))
                .cornerRadius(8)
                .padding(.horizontal)
                
                Spacer()
            }
            .padding(.top)
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
