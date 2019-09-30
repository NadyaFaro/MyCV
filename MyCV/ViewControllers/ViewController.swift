//
//  ViewController.swift
//  MyCV
//
//  Created by Max on 29.09.2019.
//  Copyright © 2019 Nadzeya Artuhanava. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var myPhoto: UIImageView!
    
    @IBOutlet var familyMemberLabel: UILabel!    
    @IBOutlet var familyMemberPicker: UIPickerView!
    @IBOutlet var familyMemberPhoto: UIImageView!
    
    let familyMembers = ["husband", "Koks", "Yusya", "Sofi", "Shanti", "Tiffani"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.title = "About me"
        
        familyMemberPhoto.layer.cornerRadius = 10
        familyMemberPhoto.isHidden = true
        
        familyMemberPicker.delegate = self
        familyMemberPicker.dataSource = self
       
    }

    override func viewWillLayoutSubviews() {
        myPhoto.layer.cornerRadius = myPhoto.frame.width / 1.5
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return familyMembers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return familyMembers[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        familyMemberPhoto.isHidden = false
        familyMemberPhoto.image = UIImage(named: familyMembers[row])
    }
}
