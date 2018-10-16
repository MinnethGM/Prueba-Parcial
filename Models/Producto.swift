//
//  Productos.swift
//  Nuevocafe
//
//  Created by Alumno on 15/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Producto {
    var nombreProducto : String
    var descripcionProducto : String
    var imagenProducto : UIImage
    var imagenDetalleProducto : UIImage
    var comentariosProducto : [Comentario] = []
    
    init() {
        nombreProducto = ""
        descripcionProducto = ""
        imagenProducto = UIImage()
        imagenDetalleProducto = UIImage()
    }
    init(nombreProducto : String, descripcionProducto : String, imagenProducto : UIImage, imagenDetalleProducto : UIImage){
        self.nombreProducto = nombreProducto
        self.descripcionProducto = descripcionProducto
        self.imagenProducto = imagenProducto
        self.imagenDetalleProducto = imagenDetalleProducto
        
    }
}
