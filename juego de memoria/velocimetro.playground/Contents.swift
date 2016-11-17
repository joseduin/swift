
import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> (actual : Int, velocidadEnCadena: String) {
        var leyenda = ""
        let actual = velocidad.rawValue
        
        switch velocidad {
            case .Apagado:
                velocidad = .VelocidadBaja
                leyenda = "Apagado"
            case .VelocidadBaja:
                velocidad = .VelocidadMedia
                leyenda = "Velocidad Baja"
            case .VelocidadMedia:
                velocidad = .VelocidadAlta
                leyenda = "Velocidad Media"
            case .VelocidadAlta:
                velocidad = .VelocidadMedia
                leyenda = "Velocidad Alta"
        }
        return (actual, leyenda)
    }
    
}

var auto = Auto()
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(result.actual), \(result.velocidadEnCadena)")
}
