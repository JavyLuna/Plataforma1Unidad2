//
//  primeTableViewCell.swift
//  2DA_EVA_EXAMEN_EQUIPO_DONUT
//
//  Created by LUIS FERNANDO on 05/04/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class primeTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var restaurantImage: UIImageView!
    
    @IBOutlet weak var restaurantLocation: UILabel!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantDescription: UILabel!
    @IBOutlet weak var nombreRestaurant: UILabel!
    
    @IBOutlet weak var starImage3: UIImageView!
    @IBOutlet weak var starImage2: UIImageView!
    @IBOutlet weak var starImage1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
