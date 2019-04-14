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
    let sex = ["남자","여자"]
    var selectSex = "남자"
    var selectBirthDay = "1988-09-22"

    @IBOutlet var txtName: UITextField!
    @IBOutlet var pickerSex: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        }

    @IBAction func btnSend(_ sender: UIButton) {
        
        
        let memberData = "이름:[" + txtName.text! + "]"
            + "\n 성별:[" + selectSex + "]"
            + "\n 생년월일:[" + selectBirthDay  + "]"
        
        
        let sendAlert = UIAlertController(title: "회원가입 하시겠습니까?", message: memberData, preferredStyle: UIAlertController.Style.alert)
        
        let sendYesAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: nil)
        let sendNoAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
        
        sendAlert.addAction(sendYesAction)
        sendAlert.addAction(sendNoAction)
        
        present(sendAlert, animated: true, completion: nil)
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        selectBirthDay = formatter.string(from: datePickerView.date)
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
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectSex = sex[row]
    }
    
}

