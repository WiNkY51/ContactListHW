//
//  FullContactLisatViewController.swift
//  ContactList
//
//  Created by Winky51 on 29.08.2024.
//

import UIKit

final class FullContactListViewController: UITableViewController {

    var contacts: [Person]!
    
}

//MARK: - TableViewDataSorse
extension FullContactListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
       }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
       }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.section]
        var configurator = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            configurator.text = contact.email
            configurator.image = UIImage(systemName: "person.circle")
        default:
            configurator.text = contact.numberPhone
            configurator.image = UIImage(systemName: "tray.circle")
        }
        
        cell.contentConfiguration = configurator
        
        return cell
       }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
