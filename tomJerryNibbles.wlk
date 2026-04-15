object tom {
    //Parte 1
    var energiaInicial = 50
    method velocidadMaxima() = 5 + (energiaInicial / 10)
    method corre(distancia){
        energiaInicial = (energiaInicial - distancia / 2).max(0)
    }
    method comer(raton){
        energiaInicial = energiaInicial + 12 + raton.peso()
    }

    //Parte 2
    method puedeCazar(distancia) {
        return (distancia / 2) <= energiaInicial
    }
    
    method cazar(distancia, raton){
        if (self.puedeCazar(distancia)) {
            self.corre(distancia)
            self.comer(raton)
        }
    }
}

object jerry {
    var edadInicial = 2
    method edadActual() = edadInicial
    method edadNueva(nuevaEdad){
        edadInicial = nuevaEdad
    }

    method peso() = edadInicial * 20
}

object nibbles {
    method peso() = 35
}

// Parte 3 Inventar otro ratón