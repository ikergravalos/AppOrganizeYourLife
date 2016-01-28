//
//  Datos.swift
//  OrganizeYourLife
//
//  Created by  on 28/1/16.
//  Copyright © 2016 Ikeres. All rights reserved.
//

import Foundation


class Datos  {
    class var sharedInstance: Datos {
        struct Static {
            static var instance: Datos?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = Datos()
        }
        
        return Static.instance!
    }
 var tareas: [Tareas] = []
    var lista = Lista()
    var pendientes = ["Tarea 1","Tarea 2","Tarea 3"]
    var nombre=""
    
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

    func getNombre() -> String{
        
        return nombre
        
    }
    
    func setNombreTarea(nombreTarea: String) {
        
        self.nombre = nombreTarea
        
    }
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