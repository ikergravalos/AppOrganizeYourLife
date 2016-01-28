//
//  ViewController.swift
//  OrganizeYourLife
//
//  Created by  on 17/12/15.
//  Copyright © 2015 Ikeres. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "cell"
    
        var tareas: [UIImage] = [
        UIImage(named: "postit.png")!
    ]
    
    // MARK: - UICollectionViewDataSource implementación del protocolo (interfaz) de la fuente de datos de la colección
    
    // Cuantas celdas tiene que tener
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.tareas.count
    }
    
    // Devolver la celda correspondiente a uno de los datos de la colección
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // Obtener una referencia a la celda del Storyboard
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MiCelda
        
        // La clase personalizada MiCelda contiene un outlet a la etiqueta del storyboard
        cell.postit = UIImage(named: "postit.png") // Dato
        
        cell.backgroundColor = UIColor.lightGrayColor() // Color de fondo
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol que implementa una delegación
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        // Detectar los toques
        print("You selected cell #\(indexPath.item)!")
    }
}
