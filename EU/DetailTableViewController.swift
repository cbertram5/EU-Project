//
//  DetailTableViewController.swift
//  EU
//
//  Created by Chris Bertram on 9/23/20.
//  Copyright © 2020 Chris Bertram. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var capitalField: UITextField!
    @IBOutlet weak var euroSwitch: UISwitch!
    
    var nation: Nation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if nation == nil {
            nation = Nation(country: "", capital: "", usesEuro: false)
        }
        
        countryField.text = nation.country
        capitalField.text = nation.capital
        euroSwitch.isOn = nation.usesEuro
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        nation = Nation(country: countryField.text!, capital: capitalField.text!, usesEuro: euroSwitch.isOn)
    }

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
