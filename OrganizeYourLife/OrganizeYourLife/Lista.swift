//
//  Lista.swift
//  OrganizeYourLife
//
//  Created by Iker on 17/1/16.
//  Copyright © 2016 Ikeres. All rights reserved.
//

import UIKit

class Lista: NSObject {
    var pendientes = ["Tarea 1","Tarea 2","Tarea 3"]
    
    
    
    //Cantidad máxima el array
    
    func getMaxPendientes() -> Int{
        
        return pendientes.count
    }
    
    //Función de mostrar artículos
    
    func getMostrarPendientes (posicion :Int) -> String {
        
        return pendientes[posicion]
    }
    
    //Función de añadir un nuevo artículo
    
    func setAnadirPendientes(nuevoItem: String) {
        
        pendientes.append(nuevoItem)
        
    }

}
