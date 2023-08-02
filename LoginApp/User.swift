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
            person: Person(
                name: "Zeit",
                hobbies: "Lots of them"
            )
        )
    }
}

struct Person {
    let name: String
    let hobbies: String
}
