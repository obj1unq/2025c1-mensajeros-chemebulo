object paqueteDeGeorge {
	var estaPago = false
	
	method puedeSerEnviado(lugar, mensajero) = estaPago && lugar.puedePasar(
		mensajero
	)
	
	method estaPago() = estaPago
	
	method pagar() {
		estaPago = true
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object puenteDeBrooklyn {
	method puedePasar(mensajero) = mensajero.peso() <= 1000
}

object matrix {
	method puedePasar(mensajero) = mensajero.puedeLlamar()
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object chuckNorris {
	const peso = 900
	
	method peso() = peso
	
	method puedeLlamar() = true
}

object neo {
	const peso = 0
	var credito = 100
	
	method llamar() {
		// Es una forma linda para representar la orden de "gastarCredito", consideré interesante la existencia de este método (ya que existe "cargarCredito").
		if (credito >= 50) {
			credito -= 50
		} else {
			credito = 0
		}
	}
	
	method cargarCredito(cantidad) {
		credito += cantidad
	}
	
	method peso() = peso
	
	method puedeLlamar() = credito > 0
}

object lincolnHawk {
	// Inicializado con una bici por decisión propia, de todas formas con el setter "vehiculo" es posible cambiarlo a conveniencia. 
	var peso = 80 + bici.peso()
	var vehiculo = bici
	
	method vehiculo(_vehiculo) {
		peso -= self.vehiculo().peso()
		vehiculo = _vehiculo
		peso += self.vehiculo().peso()
	}
	
	method vehiculo() = vehiculo
	
	method peso() = peso
	
	method puedeLlamar() = false
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object bici {
	method peso() = 10
}

object camion {
	// Inicializado sin acoplados por decisión propia, de todas formas con el método "agregarAcoplado" es posible cambiarlo a conveniencia.
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