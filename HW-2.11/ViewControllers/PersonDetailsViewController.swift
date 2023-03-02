//
//  PersonDetailsViewController.swift
//  HW-2.11
//
//  Created by Игорь Солодянкин on 02.03.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
