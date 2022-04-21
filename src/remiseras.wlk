/* clientas */

object ludmila {
	
	method valorPorKm() { return 18 }
}

object anaMaria {
	var economicamenteEstable = true
	
	method setEconomiaEstable(unBool) { economicamenteEstable = unBool }
	method economicamenteEstable() { return economicamenteEstable }
	
	method valorPorKm() {
		if (not self.economicamenteEstable()) { return 25 }
		else { return 30 }
	}
}

object teresa {
	var valorPorKm = 22
	
	method setValorPorKm(unValor) { valorPorKm = unValor }
	method valorPorKm() { return valorPorKm }
}

/* remiseras */

object roxana {
	
	method precioViaje(cliente, km) { return cliente.valorPorKm() * km }
}

object gabriela {
	
	method precioViaje(cliente, km) { return ((cliente.valorPorKm() * km) * 0.20) + (cliente.valorPorKm() * km) }
}

object mariela {
	
	method precioViaje(cliente, km) {
		if ((cliente.valorPorKm() * km) > 50) { return cliente.valorPorKm() * km }
		else { return 50 }
	}
}

object juana {
	
	method precioViaje(cliente, km) {
		if(km <= 8) { return 100 }
		else { return 200 }
	}
}