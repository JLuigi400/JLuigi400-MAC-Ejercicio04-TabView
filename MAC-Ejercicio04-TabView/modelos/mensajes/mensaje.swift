//
//  mensaje.swift
//  MAC-Ejercicio04-TabView
//
//  Created by alumno on 11/6/26.
//
import Foundation

struct Mensajes: Identifiable{
    var id = UUID() // Identificador UNIVERSAL Unico
    
    let remitente: String?
    let receptor: String?
    
    var cuerpo: String
}
