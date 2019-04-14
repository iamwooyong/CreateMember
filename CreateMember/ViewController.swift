//
//  ViewController.swift
//  CreateMember
//
//  Created by NICE on 14/04/2019.
//  Copyright © 2019 NICE. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 2
    let PICKER_VIEW_COLUMN = 1
    var sex = ["남자","여자"]

    @IBOutlet var txtName: UITextField!
    
    @IBOutlet var pickerSex: UIPickerView!
    
    @IBOutlet var datePickerBirthDay: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
    }
    
    func  numberOfComponents(in pickerView: UIPickerView) -> Int {
       return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sex.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sex[row]
    }
    
}

