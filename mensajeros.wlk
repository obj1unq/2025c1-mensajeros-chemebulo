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
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object puenteDeBrooklyn {
	method puedePasar(mensajero) = mensajero.peso() <= 1000
}

object matrix {
	method puedePasar(mensajero) = mensajero.puedeLlamar()
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object chuckNorris {
	const peso = 900
	
	method peso() = peso
	
	method puedeLlamar() = true
}

object neo {
	const peso = 0
	var credito = 100
	
	method credito(_credito) {
		credito = _credito
	}
	
	method peso() = peso
	
	method puedeLlamar() = credito > 0
}

object lincolnHawk {
	// Inicializado con una bici por decisión propia, de todas formas con el método "vehiculo (_vehiculo)" es posible cambiarlo a conveniencia. 
	var pesoPropio = 80
	var vehiculo = bici
	
	method vehiculo(_vehiculo) {
		vehiculo = _vehiculo
	}
	
	method vehiculo() = vehiculo
	
	method peso() = pesoPropio + vehiculo.peso()
	
	method pesoPropio(_pesoPropio) {
		pesoPropio = _pesoPropio
	}
	
	method puedeLlamar() = false
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

object bici {
	method peso() = 10
}

object camion {
	// Inicializado sin acoplados por decisión propia, de todas formas con el setter "acoplados" es posible cambiarlo a conveniencia.
	var acoplados = 0
	const pesoPropio = 500
	
	method acoplados(_acoplados) {
		acoplados = _acoplados
	}
	
	method acoplados() = acoplados
	
	method peso() = pesoPropio + (acoplados * acoplado.peso())
}

object acoplado {
	method peso() = 500
}