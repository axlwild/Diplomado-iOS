//: Playground - noun: a place where people can play

import UIKit

func getClientPet() -> Animal {
    //returns the pet
}
 
let pet = getClientPet() //`pet` is of type `Animal`
 
func walk(dog: Dog) {
    print("Walking \(dog.name)")
}
 
func cleanLitterBox(cat: Cat) {
    print("Cleaning the \(cat.boxSize) litter box'")
}
func cleanCage(bird: Bird) {
    print("Removing the \(bird.featherColor) feathers at the
        bottom of the cage'")
}

/*
 Tipo de dato any
 */

var items: [Any] = [5, "Bill", 6.7, Dog()]
//Desenvuelve el tipo para poder usarlo, si no es tipo Any aùn
if let firstItem = items[0] as? Int {
    print(firstIten + 4)
}



/*
 Guard
 */
guard condition else{
    //false
}
//true...







