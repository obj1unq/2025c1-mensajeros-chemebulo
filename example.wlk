object paqueteDeGeorge {

}

object puenteDeBrooklyn {
    method puedePasar(mensajero) {

    }
}

object matrix {

}

object chuckNorris {
     const peso = 900

     method peso() {
        return peso
    }

    method puedeLlamar () {
        return true
    }
}

object neo {
    const peso = 0

    var credito = 100

     method peso() {
        return peso
    }

    method puedeLlamar() {
        return credito > 0
    }

}

object lincolnHawk {
    var peso = 80

    var vehiculoActual = bici

    method vehiculo (_vehiculo) {
         vehiculoActual = _vehiculo
    }

    method peso () {
        return peso + vehiculoActual.pesoQueTiene()
    }

    method puedeLlamar() {
        return false
    }
}

object bici {
     method pesoQueTiene () {
        return 10
     }
}

object camion {
    var acoplados = 0

    const pesoDelCamion = 500

    var pesoTotal = pesoDelCamion

    method agregarAcoplado () {
        acoplados += 1
        pesoTotal += acoplado.pesoQueTiene()
    }

    method quitarAcoplado () {
        if (acoplados > 0) {
            acoplados -= 1
            pesoTotal -= acoplado.pesoQueTiene()
        } else {
            acoplados += 0
            pesoTotal += 0
        }
    }
 
    method cantidadDeAcoplados () {
        return acoplados
    }

    method pesoQueTiene () {
        return pesoTotal
     }
}

object acoplado {
    method pesoQueTiene () {
        return 500
    }
}