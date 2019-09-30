//
//  FavoritesViewController.swift
//  MyCV
//
//  Created by Max on 30.09.2019.
//  Copyright © 2019 Nadzeya Artuhanava. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    @IBOutlet var favoritesLabel: UILabel!
    @IBOutlet var favoritesSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        favoritesLabel.layer.cornerRadius = 10
    }
    
    @IBAction func changeFavoritesLabelText() {
        switch favoritesSegment.selectedSegmentIndex {
        case 0:
            favoritesLabel.text = "Билл Бернет, Дэйв Эванс <Дизайн вашей жизни>"
        case 1:
            favoritesLabel.text = "Становая тяга, Жим ногами, Присед"
        case 2:
            favoritesLabel.text = "Схватка, Точки, Мозговой штурм"
        case 3:
            favoritesLabel.text = "Speaking, Listening, Gramar"
        default: break
        }
    }
}
