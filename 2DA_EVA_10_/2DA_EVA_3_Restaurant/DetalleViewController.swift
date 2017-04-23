//
//  DetalleViewController.swift
//  2DA_EVA_3_Restaurant
//
//  Created by administrador on 24/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var resLabel: UILabel!
    @IBOutlet weak var imgDeta: UIImageView!
    
    var sNomImg = ""
    var sResImg = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        resLabel.text = sResImg
        imgDeta.image = UIImage(named: sNomImg)!
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
