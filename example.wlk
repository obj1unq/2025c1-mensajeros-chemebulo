object paqueteDeGeorge {
	var estaPago = false

	method puedeSerEnviado(lugar, mensajero) {
		return estaPago && lugar.puedePasar(mensajero)
	}

	method estaPago() = estaPago

	method pagar() {
		estaPago = true
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object puenteDeBrooklyn {
	method puedePasar(mensajero) {
		return mensajero.peso() < 1000
	}
}

object matrix {
	method puedePasar(mensajero) {
		return mensajero.puedeLlamar()
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object chuckNorris {
	const peso = 900
	
	method peso() = peso
	
	method puedeLlamar() = true
}

object neo {
	const peso = 0
	var credito = 100

	method llamar() {
		if (credito >= 50) {
			credito -= 50
		} else {
			credito = 0
		}
	}

	method agregarCredito(cantidad) {
		credito += cantidad
	}
	
	method peso() = peso
	
	method puedeLlamar() = credito > 0
}

object lincolnHawk {
	var peso = 80 + bici.peso()
	var vehiculo = bici
	
	method vehiculo(_vehiculo) {
		peso = peso - self.vehiculo().peso()
		vehiculo = _vehiculo
		peso = peso + self.vehiculo().peso()
	}
	
	method vehiculo() = vehiculo
	
	method peso() = peso
	
	method puedeLlamar() = false
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object bici {
	method peso() = 10
}

object camion {
	var cantidadDeAcoplados = 0
	var peso = 500
	
	method agregarAcoplado() {
		cantidadDeAcoplados += 1
		peso += acoplado.peso()
	}
	
	method quitarAcoplado() {
		if (cantidadDeAcoplados > 0) {
			cantidadDeAcoplados -= 1
			peso -= acoplado.peso()
		} else {
			cantidadDeAcoplados -= 0
			peso -= 0
		}
	}
	
	method cantidadDeAcoplados() = cantidadDeAcoplados
	
	method peso() = peso
}

object acoplado {
	method peso() = 500
}