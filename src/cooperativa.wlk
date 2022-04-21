import remiseras.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	// establece las remiseras de primera y de segunda opción.
	method asignarRemiseras(remisera1, remisera2) { 
		primeraRemisera = remisera1 
		segundaRemisera = remisera2
	}
	
	// cambia la remisera de primera opción por el que se indica.
	method cambiarPrimerRemiserarPor(remisera) { self.asignarRemiseras(remisera, segundaRemisera) }
	
	// cambia la remisera de segunda opción por el que se indica.
	method cambiarSegundoRemiseraPor(remisera) { self.asignarRemiseras(primeraRemisera, remisera) }
	
	// intercambia las remiseras de primera y segunda opción. 
	// O sea, la que era primera pasa a segunda, y viceversa.
	method intercambiarRemiseras() { self.asignarRemiseras(segundaRemisera, primeraRemisera) }
	
	/*devuelve la remisera que corresponde asignar a un viaje, 
	  dados el cliente y la cantidad de kilómetros. 
	  El criterio es el siguiente: si para ese viaje, 
	  el precio de la segunda remisera es menor al de la primera con una diferencia de más de 30 pesos, 
	  entonces se elige la segunda remisera; si no, se elige la primera.*/
	method remiseraElegidaParaViaje(cliente, kms) { 
		if (primeraRemisera.precioViaje(cliente, kms) > segundaRemisera.precioViaje(cliente, kms) 
			and (primeraRemisera.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms)) > 30 ) {
				return segundaRemisera
			}
		else { return primeraRemisera }
	}
}
