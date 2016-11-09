
import UIKit

// Generar un rango de 0 a 100
var rango = [Int](0...100)

// Tienes que iterar el rango completo
for numero in rango {
    
    var cadena = ""
    
    // Si el número es divisible entre 5
    if numero % 5 == 0 {
        cadena += "Bingo!!! \t"
    }
    
    // Si el número es par
    if numero % 2 == 0 {
        cadena += "par!!! \t"
    }
    
    // Si el número es impar
    if numero % 2 != 0 {
        cadena += "impar!!! \t"
    }
    
    // Si el número se encuentra dentro de un rango del 30 al 40
    if numero >= 30 && numero <= 40 {
        cadena += "Viva Swift!!!"
    }
    
    print("#\(numero) \t \(cadena)")
}
