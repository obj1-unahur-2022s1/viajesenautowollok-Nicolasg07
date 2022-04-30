/* 
 * clientas: Bien
 * */

object ludmila {
	
	method valorPorKm() { return 18 }
}

object anaMaria {
	var economicamenteEstable = true
	
	method setEconomiaEstable(unBool) { economicamenteEstable = unBool }
	method economicamenteEstable() { return economicamenteEstable }
	
	/* Te dejo una forma resumida de hacer este método */
	method valorPorKm() = if (self.economicamenteEstable()) {30} else {25}
	
}

object teresa {
	var valorPorKm = 22
	
	method setValorPorKm(unValor) { valorPorKm = unValor }
	method valorPorKm() { return valorPorKm }
}

object melina {
	var trabajaPorClienta
	
	method trabajo(clienta) { trabajaPorClienta = clienta }
	method valorPorKm() { return trabajaPorClienta.valorPorKm() - 3 }
}

/* 
 * remiseras: Bien
 */

object roxana {
	
	method precioViaje(cliente, km) { return cliente.valorPorKm() * km }
}

object gabriela {
	/*Rercoda que si queres aumentar un % podes directamente multiplicar por 1.% */
	method precioViaje(cliente, km) = cliente.valorPorKm() * km * 1.20
}

object mariela {
	/*Acá podes usar el max() y usar la forma reducida al mismo tiempo*/
	method precioViaje(cliente, km)= 50.max(cliente.valorPorKm() * km) 

}

object juana {
	
	method precioViaje(cliente, km) {
		if(km <= 8) { return 100 }
		else { return 200 }
	}
}

object lucia {
	var remiseraAReemplazar
	
	method reemplazo(remisera) { remiseraAReemplazar = remisera }
	method precioViaje(cliente, km) { return remiseraAReemplazar.precioViaje(cliente, km) }
}
