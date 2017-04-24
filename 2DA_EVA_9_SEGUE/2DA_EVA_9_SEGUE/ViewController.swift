//
//  ViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by administrador on 23/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func lanzarSegue(sender: AnyObject) {
  //Es el mensaje, que segun la opcion escogida manda a llamar los segues       
        let alertController = UIAlertController(title: "Pantallas", message: "Mostrar pantallas", preferredStyle: .Alert)
        let actionVerde = UIAlertAction(title: "Verde", style: .Default, handler: {action in self.performSegueWithIdentifier("verde", sender: self)})
        let actionRojo = UIAlertAction(title: "Rojo", style: .Default, handler: {action in self.performSegueWithIdentifier("rojo", sender: self)})
        alertController.addAction(actionVerde)
        alertController.addAction(actionRojo)
        presentViewController(alertController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Funcion que manda los datos al segue llamado verde y si no, nos muestra el rojo    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "verde" {
            let miViewController = segue.destinationViewController as! VerdeViewController
            miViewController.sTexto = "HOLA MUNDO VERDE"
        }
        else if segue.identifier == "rojo" {
            let miViewController = segue.destinationViewController as! RojoViewController
            miViewController.sTexto1 = "HOLA MUNDO ROJO"
        }
    }

}

