//
//  NuevaTareaTablaViewController.swift
//  OrganizeYourLife
//
//  Created by Iker on 17/1/16.
//  Copyright © 2016 Ikeres. All rights reserved.
//

import UIKit

class NuevaTareaTablaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    @IBOutlet weak var InsertarTarea: UITextField!
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */
    var newItem = String()
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Añadir" {
           newItem = InsertarTarea.text!
        }
        
    }


}
