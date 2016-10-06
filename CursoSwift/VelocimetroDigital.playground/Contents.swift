//: Playground - noun: a place where people can play
import Cocoa


//: Enumeración de velocidades
enum Velocidades : Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    //: Inicializador de la enumeración
    init (velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}


//: Clase auto
class Auto{
    
    
    //: Instancia de la enumeracion Velocidades dentro de la clase auto
    var velocidad : Velocidades
    
    //: Inicializador de la clase auto
    init(){
        
        //: Inicializar la instancia de velocidad con el valor de apagado
        self.velocidad = Velocidades(velocidadInicial: Velocidades.apagado)
        
    }
    
    
    //: Función de cambio de velocidad
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        
        var resultado : (Int,String)
        
        
        //: reglas
        switch self.velocidad {
            
        case .apagado:
            resultado = (self.velocidad.rawValue, "Apagado")
            self.velocidad = Velocidades.velocidadBaja
            
        case .velocidadBaja:
            resultado = (self.velocidad.rawValue, "Velocidad Baja")
            self.velocidad = Velocidades.velocidadMedia
            
        case .velocidadMedia:
            resultado = (self.velocidad.rawValue, "Velocidad Media")
            self.velocidad = Velocidades.velocidadAlta
            
        case .velocidadAlta:
            resultado = (self.velocidad.rawValue, "Velocidad Alta")
            self.velocidad = Velocidades.velocidadMedia
            
        }
        
        return resultado
        
    }
}

//: instancia de la clase Auto
var auto = Auto()
var resultado : (Int,String)

//: iteraciones
for iteracion in 1...20{
    
    //:imprimir resultado
    resultado =  auto.cambioDeVelocidad()
    print(resultado)
    
}