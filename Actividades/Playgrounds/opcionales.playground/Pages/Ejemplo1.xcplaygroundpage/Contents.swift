//: Playground - noun: a place where people can play

import UIKit

struct Book {
    let name: String
    //? significa que puede ser nulo
    let publicationYear: Int?
}

//member wise initializer con las estructuras
let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets", publicationYear: 1998)
let books = [firstHarryPotter, secondHarryPotter]

//Por default, no se puede contener nulos.
let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)
