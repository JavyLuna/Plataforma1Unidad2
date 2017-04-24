//
//  ViewController.swift
//  2DA_EVA_PRACTICA_5
//
//  Created by administrador on 21/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//


import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource  {
//Variables globales     
    var misDatos = ["1","2","3","4","5","6","7","8","9","0"]
    var defecto = [0,0,0]
    var arContra = [1,1,5] //2-2-6
    var usuario = "Javier"
    var condicion = false

    @IBOutlet weak var usuText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
//Funcion que evalua, si la combinacion de usuario y clave son las guardadas mostrara un mensaje de que iniciaste sesion y te manda
// a un segue de que ya iniciaste sesion y si te equivocas 
    @IBAction func btnEntrar(sender: AnyObject) {
        if(condicion == true){
            let cuadro = UIAlertController(title: "Bienvenido", message: usuario, preferredStyle: .Alert)
            let boton = UIAlertAction(title: "Aceptar", style: .Default, handler: {action in self.performSegueWithIdentifier("usuario", sender: self)} )

            cuadro.addAction(boton)
            presentViewController(cuadro, animated: true, completion: nil)
        }else{
            let cuadro = UIAlertController(title: "Fallo de inicio de sesion", message: "Usuario o Contraseña incorrectos", preferredStyle: .Alert)
            let boton = UIAlertAction(title: "Aceptar", style: .Default, handler: nil)
            cuadro.addAction(boton)
            presentViewController(cuadro, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return misDatos[row]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return misDatos.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        defecto[component] = row
        let usu = usuText.text
    //Te evalua si la combinacion es la correcta, si lo es ingresa si no marcara falso    
        if (defecto == arContra && usuario == usu){
            condicion = true
        }else{
            condicion = false
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    

    
}

