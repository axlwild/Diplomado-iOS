//: [Previous](@previous)

import Foundation

//Declaramos la variable con excepción.

var str: String? = nil
str = "hola"
//desenvolviendo un opcional. (optional binding)
if let unwrappedStr = str {
    print(unwrappedStr)
}


let string = "123"
let possibleNumber = Int(string)
let string2 = "Hola"
// possibleNumber se convierte en opcional por si no puede hacer el cast
let possibleNumber2 = Int(string2)
if let unwrappedNumber = possibleNumber{
    print(unwrappedNumber)
}else{
    print("conversión no válida")
}


