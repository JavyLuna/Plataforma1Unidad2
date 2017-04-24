//
//  RojoViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by administrador on 23/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class RojoViewController: UIViewController {

    @IBOutlet weak var lblDatos1: UILabel!
    
    //@IBOutlet weak var lblDatos: UILabel!
    var sTexto1=""
 //Label creada, la cual nos va a modificar segun la opcion escogida en el ViewController    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDatos1.text = sTexto1

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
