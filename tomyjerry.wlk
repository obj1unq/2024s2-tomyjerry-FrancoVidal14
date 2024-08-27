object tom {
	//Completar! Pueden aparecer variables y métodos nuevos!
	var energia = 50
	
	method comer(raton) {
		energia += self.energiaQueRecibePorComerA(raton)
	}
	
	method correr(distancia) {
		energia -= distancia / 2
	}
	
	method velocidadMaxima() = 5 + (energia / 10)
	
	method puedeComerA(distancia) = self.energiaQueGastaEnRecorrer(
		distancia
	) < energia
	
	method quiereComerA(raton, distancia) = self.puedeComerA(
		distancia
	) && (self.energiaQueGastaEnRecorrer(
		distancia
	) < self.energiaQueRecibePorComerA(raton))
	
	method energiaQueGastaEnRecorrer(distancia) = distancia / 2
	
	method energiaQueRecibePorComerA(raton) = (energia + 12) + raton.peso()
}

object jerry {
	var edad = 2
	
	method edad() = edad
	
	method peso() = edad * 20
	
	method cumplir() {
		edad += 1
	}
}

object nibbles {
	method peso() = 35
}