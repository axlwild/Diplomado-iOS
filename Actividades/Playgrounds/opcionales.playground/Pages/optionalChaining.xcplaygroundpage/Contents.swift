//: [Previous](@previous)

import Foundation

struct Person{
    var age: Int
    var residence: Residence?
}

struct Residence{
    var address: Address?
}

struct Address{
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}


let person = Person(age: 10, residence: Residence(address: Address(
    buildingNumber: "10", streetName: "La calle de la amargura", apartmentNumber: "1")))
//Desenvolviendo
/*
if let theResidence = person.residence{
    if let theAddress = theResidence.address{
        if let theApartmentNumber = theAddress.apartmentNumber{
            print("He/She lives in apartment number \(theApartmentNumber)")
        }
    }
}
 */
//Pero como está bien ñero, uso esto
if let theApartmentNumber = person.residence?.address?.apartmentNumber{
     print("He/She lives in apartment number \(theApartmentNumber)")
}

//: [Next](@next)
