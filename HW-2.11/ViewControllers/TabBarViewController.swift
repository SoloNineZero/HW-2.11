//
//  TabBarViewController.swift
//  HW-2.11
//
//  Created by Игорь Солодянкин on 02.03.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupPerson(list: persons)
    }
    
    private func setupPerson(list persons: [Person]) {
        let contactListVC = viewControllers?.first as! PersonListViewController
        let secondPersonListVC = viewControllers?.last as! SecondPersonListViewController
        
        contactListVC.persons = persons
        secondPersonListVC.persons = persons
    }
}
