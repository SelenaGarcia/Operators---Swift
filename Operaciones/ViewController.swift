//
//  ViewController.swift
//  Operaciones
//
//  Created by Selena Belén Garcia Lobo on 01/08/2022.
//

import UIKit

class ViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()

        print("bifurcaciones")
        ifLet()
        guardLet()

        print("arrays")
        arrayVacio()
        arrayValorPorDefecto()
        arraySimple()

        print("Condicional")
        ifElse()

        print("for")
        forLoop()

        print("Diccionarios")
        diccionarioVacio()
        diccionario()
        diccionarioMultiplesValores()

        print("Switch")
        switchEstructura()
        switchIntervalos()
    }


}

// bifurcaciones
func ifLet(){

    let colors : [String]? = ["red", "green", "blue"]
    let nullableGreen : String? = "green"

    if let green = nullableGreen,
       let index = colors?.firstIndex(where: {$0.elementsEqual(green)}) {
        print("\(green) is present in palette at position \(index)")
    } else {
        print("\(nullableGreen ?? "undefined") is not present in palette")
    }
}
func guardLet() {
    let colors : [String] = ["red", "green", "blue"]

    guard let index = colors.firstIndex(where: {$0.elementsEqual("green")}) else {
        print("green is not present in palette")
        return
    }

    print(print("green is present in palette at position \(index)"))
}

//Colecciones de datos
func arrayVacio(){
    let someInts: [Int] = []
    print("someInts is of type [Int] with \(someInts.count) items.")
}
func arrayValorPorDefecto(){
    let threeDoubles = Array(repeating: 0.0, count: 3)
    print("someInts is of type [Double] with \(threeDoubles.count) items.")
}
func arraySimple(){
    let shoppingList: [String] = ["Cereal", "Leche", "Jugo"]
    print("Con tipo: \(shoppingList)")

    let shoppingListSinTipo = ["Cereal", "Leche", "Jugo"]
    print("Sin tipo: \(shoppingListSinTipo)")

}

// if else
func ifElse(){
    let shoppingList: [String] = ["Cereal", "Leche", "Jugo"]

    if shoppingList.isEmpty {
        print("The shopping list is empty.")
    } else {
        print("The shopping list isn't empty.")
    }
}

// for
func forLoop(){
    let shoppingList: [String] = ["Cereal", "Leche", "Jugo"]
    for item in shoppingList {
        print(item)
    }
}

// Diccionarios
func diccionarioVacio(){
    let namesOfIntegers: [Int: String] = [:]
    print(namesOfIntegers)
}
func diccionario(){
    var namesOfIntegers: [Int: String] = [:]
    namesOfIntegers[16] = "sixteen"
    print(namesOfIntegers)
}
func diccionarioMultiplesValores(){
    let airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    print(airports)
}


// Switch

func switchEstructura(){
    let someCharacter: Character = "z"
    switch someCharacter {
        case "a":
            print("The first letter of the alphabet")
        case "z":
            print("The last letter of the alphabet")
        default:
            print("Some other character")
    }
}
func switchIntervalos(){
    let approximateCount = 62
    let countedThings = "moons orbiting Saturn"
    let naturalCount: String
    switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
    }
    print("There are \(naturalCount) \(countedThings).")
}


// opcionales
/*

 if john.residence?.printNumberOfRooms() != nil {
 print("It was possible to print the number of rooms.")
 } else {
 print("It was not possible to print the number of rooms.")
 }

 if let roomCount = john.residence?.numberOfRooms {
 print("John's residence has \(roomCount) room(s).")
 } else {
 print("Unable to retrieve the number of rooms.")
 }
 // Prints "Unable to retrieve the number of rooms."

 

 */


// Extensiones
/*
extension SomeType {
    // new functionality to add to SomeType goes here
}
 extension SomeType: SomeProtocol, AnotherProtocol {
 // implementation of protocol requirements goes here
 }

 extension Double {
 var km: Double { return self * 1_000.0 }
 var m: Double { return self }
 var cm: Double { return self / 100.0 }
 var mm: Double { return self / 1_000.0 }
 var ft: Double { return self / 3.28084 }
 }
 let oneInch = 25.4.mm
 print("One inch is \(oneInch) meters")
 // Prints "One inch is 0.0254 meters"
 let threeFeet = 3.ft
 print("Three feet is \(threeFeet) meters")
 // Prints "Three feet is 0.914399970739201 meters"


 subindices:

 func printIntegerKinds(_ numbers: [Int]) {
 for number in numbers {
 switch number.kind {
 case .negative:
 print("- ", terminator: "")
 case .zero:
 print("0 ", terminator: "")
 case .positive:
 print("+ ", terminator: "")
 }
 }
 print("")
 }
 printIntegerKinds([3, 19, -27, 0, -6, 0, 7])

 extension Int {
 subscript(digitIndex: Int) -> Int {
 var decimalBase = 1
 for _ in 0..<digitIndex {
 decimalBase *= 10
 }
 return (self / decimalBase) % 10
 }
 }
 746381295[0]
 // returns 5
 746381295[1]
 // returns 9
 746381295[2]
 // returns 2
 746381295[8]
 // returns 7

 Tipos anidados
 extension Int {
 enum Kind {
 case negative, zero, positive
 }
 var kind: Kind {
 switch self {
 case 0:
 return .zero
 case let x where x > 0:
 return .positive
 default:
 return .negative
 }
 }
 }


*/
