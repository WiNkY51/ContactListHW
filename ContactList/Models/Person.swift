//
//  Person.swift
//  ContactList
//
//  Created by Winky51 on 26.08.2024.
//

struct Person {
    let name: String
    let firstName: String
    let email: String
    let numberPhone: String
    var fullName: String {
        "\(name) \(firstName)"
        }
    
    
    static func getPerson() -> [Person] {
        let data = DataStore.shared
        var persons: [Person] = []
        
        let names = data.names.shuffled()
        let firstNames = data.firstNames.shuffled()
        let emails = data.emails.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        
        let minimumCount = min(
            names.count,
            firstNames.count,
            emails.count,
            phoneNumbers.count
            )
        
        for index in 0...minimumCount - 1 {
            let person = Person(
                name: names[index],
                firstName: firstNames[index],
                email: emails[index],
                numberPhone: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons

    }
    
}
