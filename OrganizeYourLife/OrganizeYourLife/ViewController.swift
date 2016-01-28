//
//  ViewController.swift
//  OrganizeYourLife
//
//  Created by  on 17/12/15.
//  Copyright © 2015 Ikeres. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
     // MARK: - UIOutlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let datos = Datos.sharedInstance
    let reuseIdentifier = "cell"
    var menu = Menu()
   
    
    
    // MARK: - UICollectionViewDataSource implementación del protocolo (interfaz) de la fuente de datos de la colección
    
    // Cuantas celdas tiene que tener
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datos.getMaxTareas()
    }
    
    // Devolver la celda correspondiente a uno de los datos de la colección
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // Obtener una referencia a la celda del Storyboard
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MiCelda
        cell.Tarea!.text = datos.getNombreTarea(indexPath.row)
        
        // La clase personalizada MiCelda contiene un outlet a la etiqueta del storyboard
        // Dato
        
        
        
        return cell
    }
   
    @IBAction func Volver(segue:UIStoryboardSegue) {
        
    }
    @IBAction func Añadir(segue:UIStoryboardSegue) {
       
        
        
            let itemNuevo = segue.sourceViewController as! NuevaTareaViewController
            
            
            datos.setAnadir(itemNuevo.newItem)
        
        
            
        collectionView.reloadData()
        
        
        
        
        
         
        
    }
    
    // MARK: - UICollectionViewDelegate protocol que implementa una delegación
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        // Detectar los toques
        print("You selected cell #\(indexPath.item)!")
    }
}
