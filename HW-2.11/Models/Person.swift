//
//  Person.swift
//  HW-2.11
//
//  Created by Игорь Солодянкин on 02.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(surname) \(name)"
    }
    
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let name = DataStore.shared.names.shuffled()
        let surname = DataStore.shared.surnames.shuffled()
        let email = DataStore.shared.emails.shuffled()
        let phone = DataStore.shared.phones.shuffled()
        
        // Наименьшее количество элементов
        let iterationCount = min(
            name.count,
            surname.count,
            email.count,
            phone.count
        )
        
        for person in 0..<iterationCount {
            let person = Person(
                name: name[person],
                surname: surname[person],
                email: email[person],
                phone: phone[person]
            )
            persons.append(person)
        }
        return persons
    }
}
