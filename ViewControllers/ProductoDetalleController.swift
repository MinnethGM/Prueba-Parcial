//
//  ProductoDetalleController.swift
//  Nuevocafe
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ProductoDetalleController : UIViewController {
    
    @IBOutlet weak var imgProductoDet: UIImageView!
    
    @IBOutlet weak var lblDescripcion: UILabel!
    
    @IBOutlet weak var lblUsuario: UILabel!
    
    @IBOutlet weak var lblComentario: UILabel!
    
    @IBOutlet weak var imgEst1: UIImageView!
    @IBOutlet weak var imgEst2: UIImageView!
    @IBOutlet weak var imgEst3: UIImageView!
    @IBOutlet weak var imgEst4: UIImageView!
    @IBOutlet weak var imgEst5: UIImageView!
    
    
    var producto : Producto?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let productoSeleccionado = producto {
            self.title = productoSeleccionado.nombreProducto
            
            lblDescripcion.text = productoSeleccionado.descripcionProducto
            imgProductoDet.image = productoSeleccionado.imagenDetalleProducto
            
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "irAComentarios" {
            let destino = segue.destination as! ProductoComentariosController
            
            destino.comentarios = producto?.comentariosProducto
        }
    }
    
}
