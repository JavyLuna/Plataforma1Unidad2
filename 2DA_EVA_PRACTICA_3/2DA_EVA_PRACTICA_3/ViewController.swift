//
//  ViewController.swift
//  2DA_EVA_PRACTICA_3
//
//  Created by administrador on 08/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let misDatos = ["Fundamentos de programacion","Programacion Orientada a Obj","Estructura de datos","Tòpicos avanzados","Graficacion","Redes de computadoras","Sistemas Operativos para Moviles","Conmutacion y Enrutamiento de redes","Programacion logica  y funcional","Programacion web","Plataforma 1","Administracion de redes","Programacion web para moviles","Plataforma 2","Inteligencia artificial"]
    
    let semestre = ["1er Semestre","2do Semestre","3ero Semestre","4to Semestre","6to Semestre","6to Semestre","7mo Semestre","7mo Semestre","8avo Semestre","8vo Semestre","8avo semestre","8avo Semestre","9no Semestre","9no Semestre","9no Semestre"]
    
    let imagenes = ["programacion","programacion","basesdedatos","programacion","programacion","redes","programacion","redes","programacion","programacion","programacion","redes","programacion","programacion","programacion"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: semestre[indexPath.row], message: nil, preferredStyle: .Alert)
        let boton = UIAlertAction (title: "Okay", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        celda?.textLabel?.text = misDatos[indexPath.row]
        let imFija = UIImage(named: imagenes[indexPath.row])
        celda?.imageView?.image = imFija
        return celda!
        
    }
    
}

