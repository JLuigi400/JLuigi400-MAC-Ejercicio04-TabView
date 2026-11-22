//
//  crear_pantalla.swift
//  MAC-Ejercicio04-TabView
//
//  Created by Iris Gabriela Perales Ortiz on 22/11/26.
//


import SwiftUI

struct CrearPantalla: View {

    @State private var destinatario = ""
    @State private var mensaje = ""

    var body: some View {

        ZStack {
            Color("FEHBackground")
                .ignoresSafeArea()

            VStack(spacing: 16) {

                Text("NUEVA CORRESPONDENCIA")
                    .font(.headline)
                    .foregroundStyle(Color("FEHText"))

                SeparadorFEH(
                    estilo: .ornamental,
                    color: Color("FEHAccent")
                )

                VStack(alignment: .leading, spacing: 12) {

                    Text("Destinatario")
                        .foregroundStyle(Color("FEHSecondary"))

                    TextField("Nombre del destinatario", text: $destinatario)
                        .textFieldStyle(.roundedBorder)

                    Text("Mensaje")
                        .foregroundStyle(Color("FEHSecondary"))

                    TextEditor(text: $mensaje)
                        .scrollContentBackground(.hidden)
                        .padding(8)
                        .background(Color("FEHPanel"))
                        .cornerRadius(8)

                }
                .padding()
                .background(Color("FEHPanel"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("FEHAccent"), lineWidth: 1)
                )

                Button("Limpiar mensaje") {
                    destinatario = ""
                    mensaje = ""
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("FEHPrimary"))

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    CrearPantalla()
}
