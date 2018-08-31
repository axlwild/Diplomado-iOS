//: Playground - noun: a place where people can play

import UIKit

//Protocolo CustomDebug...
class Alumno: CustomDebugStringConvertible{
    var nombre: String = "Nobody"
    var debugDescription: String{
        return "Yo soy \(nombre)"
    }
    
}

var luis = Alumno()

print(luis)

struct Empleado: Equatable, Comparable, CustomStringConvertible, Codable{
    
    var nombre: String
    var apellidos: String
    var edad: Int
    //Una sola referencia en memoria que funciona para todos (static)
    static func ==(ladoizq: Empleado, ladoder: Empleado) -> Bool{
        return ladoizq.nombre == ladoder.nombre && ladoizq.apellidos == ladoder.apellidos
    }
    static func <(ladoizq: Empleado, ladoder: Empleado) -> Bool{
        return ladoizq.edad < ladoder.edad
    }
    var description: String{
        return "\(nombre) - \(edad)"
    }
}

var godin1 = Empleado(nombre: "Pedro", apellidos: "Mola", edad: 19)
var godin2 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 25)
var godin3 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 22)
var godin4 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 24)
var godin5 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 15)


if godin1 == godin2{
    print("Son iguales")
}else{
    print("No son iguales")
}

var empleados = [godin1,godin2, godin3, godin4, godin5]
let empleadosOrdenados = empleados.sorted(by: <)
for empleado in empleadosOrdenados{
    print(empleado)
}

//Herramienta codificadoara.
let jsonEncoder = JSONEncoder()

if let jsonData = try? jsonEncoder.encode(godin1),
    let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
}


protocol NombreCompleto{
    // Va a ser el getter
    var nombreCompleto: String { get }
    func diNombreCompleto()
    
}


struct Persona: NombreCompleto{
    var nombre: String
    var apellidos: String
    var nombreCompleto: String{
        return "\(nombre) \(apellidos)"
    }
    func diNombreCompleto() {
        print(nombreCompleto)
    }
}


var manuel = Persona(nombre: "Manuel", apellidos: "Chale")

manuel.diNombreCompleto()
























