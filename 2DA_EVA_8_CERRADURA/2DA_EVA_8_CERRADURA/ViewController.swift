//
//  ViewController.swift
//  2DA_EVA_8_CERRADURA
//
//  Created by administrador on 21/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
//Variables globales     
    var aiImagenes: [UIImage]!
    var password = [1,1,4]
    var def = [0,0,0]
//Arreglo con los nombres de las imagenes    
    let aiImagenes1 = [
        "facebook",
        "google",
        "instagram",
        "pinterest",
        "twitter-xl"]
//Arreglo con los nombres de las imagenes     
    override func viewDidLoad() {
        super.viewDidLoad()
        aiImagenes = [UIImage(named: "facebook")!,
                      UIImage(named: "google")!,
                      UIImage(named: "instagram")!,
                      UIImage(named: "pinterest")!,
                      UIImage(named: "twitter-xl")!]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Nos muestra los 3 pickers con las imagenes cargadas con anterioridad     
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
 //Nos regresa las imagenes   
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return aiImagenes1[row]
    }
 //Funcion que evalua, si la combinacion de imagenes es la correcta nos mostrara de que iniciaste sesion   
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        def[component] = row
        
        if (def==password){
        let acMostrar = UIAlertController(title: "Iniciaste sesion", message: "Usuario", preferredStyle: .Alert)
            let acBoton = UIAlertAction(title: "Aceptar", style: .Default, handler: nil)
            acMostrar.addAction(acBoton)
            presentViewController(acMostrar, animated: true, completion: nil)
        }
        
        
    }
  //Nos regresa las imagenes   
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aiImagenes1.count
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = aiImagenes [row]
        let imgView = UIImageView(image: imagen)
        return imgView
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    
}
