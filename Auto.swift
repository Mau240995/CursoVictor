//
//  Auto.swift
//  CursoVictor
//
//  Created by user217123 on 8/3/22.
//

import Foundation
public class Auto{
    var nombre:String
    var color:String
    var imagen:String
    init(diccionario:[String:String]){
        self.nombre = diccionario["nombre"] ?? "No hubo Valor"
        self.color = diccionario["color"] ?? "No hubo Valor"
        self.imagen = diccionario["imagen"] ?? "No hubo Valor"
    }
}
