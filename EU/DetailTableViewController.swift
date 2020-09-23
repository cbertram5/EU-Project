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
    
    var member: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if member == nil {
            member = ""
        }
        
        countryField.text = member
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        member = countryField.text
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
