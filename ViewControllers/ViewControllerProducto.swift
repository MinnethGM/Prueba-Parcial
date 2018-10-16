//
//  ViewControllerProducto.swift
//  Nuevocafe
//
//  Created by Alumno on 15/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class UIViewControllerProducto: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let Productos : [Producto] = [
        Producto(nombreProducto: "Cafe Americano", descripcionProducto: "Cafe negrito fuertecito",  imagenProducto: UIImage(named: "Americano.jpg")!, imagenDetalleProducto: UIImage(named:  "Americano.jpg")!),
        Producto(nombreProducto: "Mocha", descripcionProducto: "Sabor chocolatito", imagenProducto: UIImage(named: "Mocha1.jpg")!, imagenDetalleProducto: UIImage(named: "Mocha1.jpg")!)
        
    ]
        
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellProducto") as! CeldaProducto
        celda.lblNombre.text = Productos[indexPath.row].nombreProducto
        celda.imgProducto.image = Productos[indexPath.row].imagenProducto
        
        return celda
    }
    
    
}
