object tom {
    var energiaInicial = 50
    method velocidadMaxima() = 5 + (energiaInicial / 10)
    method corre(distancia){
        energiaInicial = (energiaInicial - distancia / 2).max(0)
    }
    method comer(raton){
        energiaInicial = energiaInicial + 12 + raton.peso()
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

// Inventar otro ratón