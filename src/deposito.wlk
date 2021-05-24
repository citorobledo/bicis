import bicis.*

//2
class Deposito{
	var property coleccionDeBicis = []
	var property bicisCompanieras =[]
	
	method agregarBici(bici){
		coleccionDeBicis.add(bici)
	}
	method bicisRapidas(){
		return coleccionDeBicis.filter({cosa=>cosa.velocidadCrucero()>25})
	}
	method marcasDeBicis(){
		
		return coleccionDeBicis.map({cosa=>cosa.marca()}).asSet()
	}
	method esDepositoNocturno(){
		return coleccionDeBicis.all({cosa=>cosa.tieneLuz()})
	}
	method hayBiciQueCarga(kilos){
		return coleccionDeBicis.any({cosa=>cosa.carga()>=kilos})
	}
	method marcaBiciRapidas(){
		const coleccion = coleccionDeBicis.filter({cosa=>cosa.velocidadCrucero()>25})
		return coleccion.map({cosa=>cosa.marca()}).asSet()
	}
	method cargaTotalBicisLargas(){
		const masDe170 = coleccionDeBicis.filter({cosa=>cosa.largo()>170})
		return masDe170.sum({cosa=>cosa.carga()})
	}
	method bicisSinAccesorios(){
		
		return coleccionDeBicis.count({cosa=>!cosa.tieneAccesorio()})
	}
	method mismaMarca(marca){
		return coleccionDeBicis.filter({cosa=>cosa.marca()== marca})
	}
	method bicisCompanieras(unaBici){
		const largoUnaBici = unaBici.largo()
		 
		const coleccionSinUnaBici = self.mismaMarca(unaBici.marca())
		coleccionSinUnaBici.remove(unaBici)
		
		return coleccionSinUnaBici.filter({cosa=>cosa.largo().between(largoUnaBici-10, largoUnaBici+10)})
	}
//6
	method paresDeBicisCompanieras(unaBici){
//		var todasBicis=self.mismaMarca(unaBici.marca())
//		var paresDeCompanieras=[]
//		paresDeCompanieras.forEach({cosa=>cosa.todasBicis.take(2))
//		return paresDeCompanieras
	}
	
}