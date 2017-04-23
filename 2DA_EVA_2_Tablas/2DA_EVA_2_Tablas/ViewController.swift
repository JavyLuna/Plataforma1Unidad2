//
//  ViewController.swift
//  2DA_EVA_2_Tablas
//
//  Created by administrador on 07/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let misDatos = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22"]
    
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
        let controlador = UIAlertController(title: "Tus datos", message: misDatos[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction (title: "Okay", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        celda?.textLabel?.text = misDatos[indexPath.row]
        let imFija = UIImage(named: "star-b")
        let imClick = UIImage(named: "star-p")
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        return celda!
        
    }
    
}

