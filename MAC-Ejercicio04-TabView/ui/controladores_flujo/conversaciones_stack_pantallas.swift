import SwiftUI

struct ConversacionesControlVista: View {
    
    @Environment(MensajesControl.self)
    var mensajes_control
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("FEHBackground")
                    .ignoresSafeArea()
                
                VStack(spacing: 16) {
                    
                    Text("ARCHIVO REAL")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(Color("FEHText"))
                    
                    SeparadorFEH(
                        estilo: .ornamental,
                        color: Color("FEHAccent")
                    )
                    
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(mensajes_control.conversaciones) { conversacion in
                                
                                NavigationLink {
                                    MensajesPantalla(
                                        mensajes: conversacion.mensajes
                                    )
                                } label: {
                                    ConversacionPrevista(
                                        conversacion: conversacion
                                    )
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ConversacionesControlVista()
        .environment(MensajesControl())
}
