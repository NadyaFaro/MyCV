//
//  HistoryViewController.swift
//  MyCV
//
//  Created by Max on 30.09.2019.
//  Copyright © 2019 Nadzeya Artuhanava. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    
    @IBOutlet var yearSlider: UISlider!
    
    let yearAndOccupation = [2006: "Преподаватель философии и логики",
                             2007: "Преподаватель философии и логики",
                             2008: "Менеджер по продажам",
                             2009: "Менеджер по продажам",
                             2010: "Специалист по активации",
                             2011: "Специалист по активации",
                             2012: "Специалист по активации",
                             2013: "Менеджер по продажам",
                             2014: "Менеджер по продажам",
                             2015: "Менеджер по продажам",
                             2016: "Менеджер проекта",
                             2017: "Менеджер проекта",
                             2018: "Менеджер проекта",
                             2019: "Менеджер проекта"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yearLabel.layer.cornerRadius = 10
        yearLabel.text = String(format: "%.0f", yearSlider.value)
        occupationLabel.text = "Преподаватель философии и логики"
    }
    
    @IBAction func changeYear() {
        yearLabel.text = String(format: "%.0f", yearSlider.value)
        for (year, position) in yearAndOccupation {
            if year == Int(yearSlider.value) {
                occupationLabel.text = position
            }
        }
    }
}
