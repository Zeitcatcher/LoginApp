//
//  User.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 8/1/23.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "user",
            password: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let hobbies: String
    let image: String
    let job: Company
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> Person {
        Person(firstName: "Zeit", lastName: "geist", hobbies: "Lots of them", image: "Arseniy", job: Company.getCompany())
    }
}

struct Company {
    let company: String
    let jobTitle: JobTitle
    
    static func getCompany() -> Company {
        Company(company: "Abbys", jobTitle: .ceo)
    }
}

enum JobTitle: String {
    case ceo = "CEO"
    case cto = "CTO"
}
