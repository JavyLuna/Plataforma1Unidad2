//
//  ViewController.swift
//  2DA_EVA_8_CERRADURA
//
//  Created by administrador on 21/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    @IBOutlet weak var imgCarros: UIImageView!
 //Arreglo con el nombre de los carros, colores y modelos    
    let carro = ["Camaro","Mustang","Challenger","Corvette","Audi R8"]
    let color = ["Rojo","Negro","Azul","Verde","Blanco","Naranja","Amarillo","Gris"]
    let modelo = ["2010","2011","2012","2013","2014","2015","2016","2017"]
//Arreglo con algunas combinaciones de carros, que al poner nos desplegara la pantalla    
    let combcarros = [
        "camaro2010rojo","camaro2014blanco","camaro2017azul",
        "challenger2010naranja","challenger2014blanco","challenger2017naranja",
        "corvette2010azul","corvette2014rojo","corvette2017negro",
        "mustang2010rojo","mustang2014blanco","mustang2017azul",
        "r82010rojo","r82014blanco","r82017rojo"]
 //Valor por defecto   
    var def = [0,0,0]

 //Todas las combinaciones posibles para que nos despliegue valores 
    var camarorojo2010 = [0,0,0]
    var camaroblanco2011 = [0,4,1]
    var camaronegro2012 = [0,1,2]
    var camaroamarillo2013 = [0,6,3]
    var camaroblanco2014 = [0,4,4]
    var camaroverde2015 = [0,4,5]
    var camaronaranja2016 = [0,5,6]
    var camaroazul2017 = [0,2,7]

    var challengernaranja2010 = [2,5,0]
    var challengerblanco2011 = [2,4,1]
    var challengerverde2012 = [2,3,2]
    var challengernegro2013 = [2,1,3]
    var challengerblanco2014 = [2,4,4]
    var challengerazul2015 = [2,2,5]
    var challengergris2016 = [2,7,6]
    var challengernaranja2017 = [2,5,7]
    
    var corvetteazul2010 = [3,2,0]
    var corvetterojo2011 = [3,0,1]
    var corvettenegro2012 = [3,1,2]
    var corvetterojo2013 = [3,2,3]
    var corvetterojo2014 = [3,2,4]
    var corvetteazul2015 = [3,3,5]
    var corvetteamarillo2016 = [3,6,6]
    var corvettenegro2017 = [3,1,7]
    
    var mustangrojo2010 = [1,0,0]
    var mustanggris2011 = [1,7,1]
    var mustangverde2012 = [1,4,2]
    var mustangblanco2013 = [1,4,3]
    var mustangblanco2014 = [1,4,4]
    var mustangnaranja2015 = [1,7,5]
    var mustangrojo2016 = [1,0,6]
    var mustangazul2017 = [1,2,7]

    var r8rojo2010 = [4,0,0]
    var r8negro2011 = [4,1,1]
    var r8blanco2012 = [4,4,2]
    var r8azul2013 = [4,2,3]
    var r8blanco2014 = [4,4,4]
    var r8azul2015 = [4,2,5]
    var r8negro2016 = [4,1,6]
    var r8rojo2017 = [4,0,7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Nos mostrara los 3 pickers views y segun le piquemos a alguno nos mostrara algo
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return carro[row] //FILA QUE SE DEBE REFRESCAR (Mostrar el dato según la fila actual)
        } else if (component == 1) {
            return color[row]
        } else{
            return modelo[row]
        }
        
    }
//Nos mostrara los 3 pickers views     
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3 //Regresar la cantidad de arreglos
    }
//Funcion que evalua la combinacion que hagamos, segun los que establecimos mas arriba, si es igual lo va a mostrar     
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //var sMensaje: String
        
        def[component] = row
        
        if(def==camarorojo2010) {
            let imgFija = UIImage(named: combcarros[0])
            imgCarros.image = imgFija
        } else if(def==camaroblanco2014) {
            let imgFija = UIImage(named: combcarros[1])
            imgCarros.image = imgFija
        } else if (def==camaroazul2017) {
            let imgFija = UIImage(named: combcarros[2])
            imgCarros.image = imgFija
        } else if (def==challengernaranja2010) {
            let imgFija = UIImage(named: combcarros[3])
            imgCarros.image = imgFija
        } else if (def==challengerblanco2014) {
            let imgFija = UIImage(named: combcarros[4])
            imgCarros.image = imgFija
        } else if (def==challengernaranja2017) {
            let imgFija = UIImage(named: combcarros[5])
            imgCarros.image = imgFija
        } else if (def==corvetteazul2010) {
            let imgFija = UIImage(named: combcarros[6])
            imgCarros.image = imgFija
        } else if (def==corvetteazul2015) {
            let imgFija = UIImage(named: combcarros[7])
            imgCarros.image = imgFija
        } else if (def==corvettenegro2017) {
            let imgFija = UIImage(named: combcarros[8])
            imgCarros.image = imgFija
        }   else if (def==mustangrojo2010) {
            let imgFija = UIImage(named: combcarros[9])
            imgCarros.image = imgFija
        }   else if (def==mustangblanco2014) {
            let imgFija = UIImage(named: combcarros[10])
            imgCarros.image = imgFija
        }
        else if (def==mustangazul2017) {
            let imgFija = UIImage(named: combcarros[11])
            imgCarros.image = imgFija
        }
        else if (def==r8rojo2010) {
            let imgFija = UIImage(named: combcarros[12])
            imgCarros.image = imgFija
        }
        else if (def==r8blanco2014) {
            let imgFija = UIImage(named: combcarros[13])
            imgCarros.image = imgFija
        }
        else if (def==r8rojo2017) {
            let imgFija = UIImage(named: combcarros[14])
            imgCarros.image = imgFija
        }
 //Y en caso de que se insgrese alguna combinacion que no este establecida, nos mostrara un mensaje avisandonos que no esta disponible
        else if (def != combcarros){
            let acMostrar = UIAlertController(title: "Auto no disponible", message: nil, preferredStyle: .Alert)
            let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            acMostrar.addAction(boton)
            presentViewController(acMostrar, animated: true, completion: nil)
        }
    }
        //if(component == 0) {
       //     sMensaje = carro[row]
       // } else if (component == 1){
       //     sMensaje = color[row]
        //} else {
       //     sMensaje = modelo[row]
        //}
        
        
        
        //let acMostrar = UIAlertController(title: "Auto no disponible", message: sMensaje, preferredStyle: .Alert)
       // let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        //acMostrar.addAction(boton)
        //presentViewController(acMostrar, animated: true, completion: nil)
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0) {
            return carro.count //Regresar el numero de datos en el arreglo
        } else if (component == 1) {
            return color.count
        } else {
            return modelo.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
        //Tamaño de la celda/fila en pixeles
    }
}

