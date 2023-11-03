//
//  User.swift
//  AboutMeApp
//
//  Created by Муслим Гаппаров on 03.11.2023.
//

struct User {
    
    let userName: String
    let password: String
    let person = Person(
        name: "Муслим",
        surname: "Гаппаров",
        city: "Москва",
        education: "Финансовый Университет",
        occupation: "iOS - разработчик",
        description: "Муслим Гаппаров родился в г. Махачкала в 2002 году. В 2020 году закончил школу и поступил на бюджет в Финансовый Университет при Правительстве РФ. В 2023 году начал увлекаться программированием и нашел себя в iOS - разработке."
    )
    
    static func getUserData() -> User {
        User(userName: "User", password: "123")
    }
}

struct Person {
    
    let name: String
    let surname: String
    let city: String
    let education: String
    let occupation: String
    let description: String
}
