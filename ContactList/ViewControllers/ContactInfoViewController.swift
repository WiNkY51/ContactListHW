//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Winky51 on 28.08.2024.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet weak var fulNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fulNameLabel.text = contact.fullName
        emailLabel.text = "Email: \(contact.email)"
        phoneLabel.text = "Phone: \(contact.numberPhone)"
    }

}
