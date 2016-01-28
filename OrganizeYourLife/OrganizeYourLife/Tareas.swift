//
//  Tareas.swift
//  OrganizeYourLife
//
//  Created by Iker on 16/1/16.
//  Copyright © 2016 Ikeres. All rights reserved.
//

import UIKit

class Tareas: NSObject {
    
 var nombre = ""
   var lista = Lista()
    
    func getNombre() -> String{
        
        return nombre
        
    }
    
    func setNombreTarea(nombreTarea: String) {
        
        self.nombre = nombreTarea
        
    }
    
    

}
