//accesorios
class Farolito{
	method peso(){
		return 0.5
	}
	method carga(){
		return 0
	}
	method esLuminoso(){
		return true
	}
}
class Canasto{
	var property volumen = 0
	
	method peso(){
		return  volumen / 10 
	}
	method carga(){
		return  volumen * 2 
	}
	method esLuminoso(){
		return false
	}
	
}
class Morral{
	var property largo = 30
	var property ojoGato = true 
	method peso(){
		return 1.2
	}
	method carga(){
		return  largo / 3 
		
	}
	method esLuminoso(){
		return ojoGato
	}
}
/*
 5--respuesta:
 * en mi caso para agregar un nuevo accesorio 
 * hay que crear una nueva clase con el nombre del accesorio
 * respetando el polimorfismo, respondiendo a los mensajes 
 * peso(), carga(), esLuminoso(). y en el caso de que 
 * el accesorio nuevo responda a otro mensaje, sumarlo a los 
 * acc anteriores o modificarlos, por ejemplo si se le agrego un parametro.
 
 */
