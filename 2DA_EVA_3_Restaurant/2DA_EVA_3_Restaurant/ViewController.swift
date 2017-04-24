//
//  ViewController.swift
//  2DA_EVA_3_Restaurant
//
//  Created by administrador on 08/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//Creamos 2 arerglos, uno que guarda el nombre de los restaurantes y el otro guarda el nombre de las imagenes puestas en los Assets    
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
//Esta funcion nos regresa los datos del arreglo con los nombres de los restaurantes    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
//Nos muestra un mensaje que el nombre del restaurante precionado    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Restaurant", message: misDatos[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction (title: "Okay", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
//Cambia la imagen al momento de precionar algun nombre de restaurante    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        celda?.textLabel?.text = misDatos[indexPath.row]
        let imFija = UIImage(named: imagenes[indexPath.row])
        let imClick = UIImage(named: "star-b")
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        return celda!
        
    }
    
}

