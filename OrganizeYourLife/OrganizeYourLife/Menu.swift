//
//  Menu.swift
//  OrganizeYourLife
//
//  Created by  on 21/1/16.
//  Copyright © 2016 Ikeres. All rights reserved.
//

import UIKit

class Menu: NSObject {
    var tareas: [Tareas] = []
    
    
    func getMaxTareas() -> Int{
        
        return tareas.count
    }
    
    //Función de mostrar artículos
    
    func getNombreTarea (posicion :Int) -> String {
        let nombreTarea = tareas[posicion].getNombre()
        return nombreTarea
    }
    
    //Función de añadir un nuevo artículo
    
    func setAnadir(nuevoItem: String) {
        let tareaNueva = Tareas()
        tareaNueva.setNombreTarea(nuevoItem)
        tareas.append(tareaNueva)
        
    }

}
