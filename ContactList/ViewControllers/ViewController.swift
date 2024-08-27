//
//  ViewController.swift
//  ContactList
//
//  Created by Winky51 on 26.08.2024.
//

import UIKit

class ViewController: UIViewController {

    var persons: [Person] = Person.getPerson()
    override func viewDidLoad() {
        super.viewDidLoad()
        printPersons()
        // Do any additional setup after loading the view.
    }

    func printPersons() {
        for person in persons {
            print("\(person.name) \(person.firstName) \(person.numberPhone) \(person.email)")
        }
    }

}

