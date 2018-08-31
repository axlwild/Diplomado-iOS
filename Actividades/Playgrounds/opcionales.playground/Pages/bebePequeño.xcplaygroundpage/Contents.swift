//: [Previous](@previous)

import UIKit

//bebé pequeño
struct Toddler{
    var name: String
    var monhsOld: Int
    //Toda la estructura es opcional cuando se instancia.
    //Inicializador falible.
    init?(name: String, monhsOld: Int) {
        
        if(monhsOld > 12 ){
            return nil
        }else {
            self.name = name
            self.monhsOld = monhsOld
        }
    }
}

let myBoy = Toddler(name: "Lalito", monhsOld: 24)

if let unwrappedToddler = myBoy{
    print(unwrappedToddler.monhsOld)

}else{
    print("no se puede instanciar la estructura")
}

