//
//  ar_kit_pantalla.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//

import SwiftUI
import RealityKit
import ARKit

struct ARPantalla: View {
    
    @State private var estadoInvocacion = "Esperando invocación"
    @State private var iconoInvocacion = "sparkles"
    @State private var imagenDetectada = false
    @State private var orbeIncovado = false
    
    @State private var detector = AnchorEntity(
        .image(group: "FEHARResources", name: "FEHOrbTarget")
    )
    
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
                    
                    escenario.add(detector)
                    
                    _ = escenario.subscribe(
                        to: SceneEvents.AnchoredStateChanged.self)
                    { evento in
                        imagenDetectada = evento.isAnchored
                    }
                }
                .background(Color("FEHPanel"))
                .cornerRadius(8)
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
                    
                    let orbe = ModelEntity(
                        mesh: .generateSphere(radius: 0.035),
                        materials: [
                            SimpleMaterial(
                                color: .purple,
                                isMetallic: true
                            )
                        ]
                    )
                    
                    orbe.position.y = 0.06
                    
                    detector.addChild(orbe)
                    
                    orbeIncovado = true
                }
                .disabled(!imagenDetectada || orbeIncovado)
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
