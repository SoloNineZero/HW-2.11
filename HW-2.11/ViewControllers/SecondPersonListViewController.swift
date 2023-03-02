//
//  SecondPersonListViewController.swift
//  HW-2.11
//
//  Created by Игорь Солодянкин on 02.03.2023.
//

import UIKit

final class SecondPersonListViewController: UITableViewController {
    var persons: [Person] = []
}

// MARK: - UITableViewDataSource
extension SecondPersonListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        cell.contentConfiguration = content
        
        return cell
    }
}
