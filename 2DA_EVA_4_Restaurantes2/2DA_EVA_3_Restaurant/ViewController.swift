//
//  ViewController.swift
//  2DA_EVA_3_Restaurant
//
//  Created by administrador on 08/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//Creamos los arreglos, uno con el nombre de los restaurantes y otro con el nombre de las imagenes     
    let misDatos = ["Barra fina","Bourke Street Bakery","Cafe Deadend","Cafe Loisl","Cafe Lore","Confessional","Donostia","Fiveleaves","Forkee Restaurant","Grahamavenuemeats","Haighschocolate","Homei","Palominoespresso","Petiteoyster","Posatelier","Royaloak","Teakha","Thai Cafe","Traif","Upstate","Waffle Wolf"]
    let imagenes = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Nos regresa los datos del arreglo con los nombres del restaurante     
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
//Funcion que nos muestra un mensaje en pantalla, mostrandonos el nombre y un boton    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Restaurant", message: misDatos[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction (title: "Okay", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
//Funcion que nos modifica el TableViewCellMia, con los datos del arreglo modificando el label y las imagenes    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        celda.lblNombre.text = misDatos[indexPath.row]
        celda.lblUbica.text = "Chihuahua"
        celda.lblDesc.text = "Far far away..."
        let imFija = UIImage(named: imagenes[indexPath.row])
        let imClick = UIImage(named: "star-b")
        celda.imgImagen.image = imFija
        celda.imgImagen.highlightedImage = imClick
        return celda
        
    }
//Al momento de deslizar un valor de nuestra tabla, nos aparecera la opcion de compartir
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRestaurante)
        return [compartirAct]
    }
//Funcion la cual comparte los datos a alguna red social     
    func comparteRestaurante(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + misDatos[indexPath.row]
        let miImagen = UIImage(named: imagenes[indexPath.row])
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    
    }
}
