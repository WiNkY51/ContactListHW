//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Winky51 on 27.08.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {

    private var contacts = Person.getPerson()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as? ContactInfoViewController
        guard let index = tableView.indexPathForSelectedRow else { return }
        contactInfoVC?.contact = contacts[index.row]
    }
}


//MARK: - TableViewDataSource
extension ContactListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        var configuration = cell.defaultContentConfiguration()
        
        configuration.text = contact.fullName
        
        cell.contentConfiguration = configuration
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
           // tableView.reloadData()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let selectContact = contacts.remove(at: fromIndexPath.row)
        contacts.insert(selectContact, at: to.row)
    }
    
    
}
