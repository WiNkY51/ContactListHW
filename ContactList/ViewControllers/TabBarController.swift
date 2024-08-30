//
//  FullContactLisatViewController.swift
//  ContactList
//
//  Created by Winky51 on 30.08.2024.
//

import UIKit

final class TabBarController: UITabBarController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    private func transferData() {
        let data = Person.getPerson()
        
        guard let fullContactNavVC = viewControllers?.last as? UINavigationController else { return }
        guard let contactListNavVC = viewControllers?.first as? UINavigationController else { return }
        guard let fullContactVC = fullContactNavVC.topViewController as? FullContactListViewController else { return }
        guard let contactListVC = contactListNavVC.topViewController as? ContactListViewController else { return }
        
        fullContactVC.contacts = data
        contactListVC.contacts = data
    }

}
