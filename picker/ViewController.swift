//
//  ViewController.swift
//  picker
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet weak var msym: UIPickerView!
    @IBOutlet weak var pickerCounteries: UIPickerView!
    let countries=["Canada","India","USA","China","maxico","Rassia","UK"]
  
    @IBOutlet weak var curencycuntry: UILabel!
    
    let currency = ["Rupees","CAD","USD","YAN","Prupee","Euro","NRupees","euro","dollor"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerCounteries.delegate = self
        self.pickerCounteries.dataSource = self        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 1{
            return countries.count
        }
        else
        {
            return currency.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 1
        {
            return self.countries[row]
        }
        else
        {
            return self.currency[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //if component == 1{
            //curencycuntry.text = self.countries[row]
            //print(self.countries[row])
        let r1 = pickerCounteries.selectedRow(inComponent: 0)
        let r2 = pickerCounteries.selectedRow(inComponent: 1)
        
        let v1 = self.countries[r2]
        let v2 = self.currency[r1]
        curencycuntry.text = " \(v1) + \(v2)"
        }
       // else{
          //  print(self.currency[row])
     //   }
    }


