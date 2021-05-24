//1
import accesorios.*
class Bici{
	var property rodado = 26
	var property largo = 120
	var property marca= ""
	var property accesorios=[]
	
	method altura(){
		return  rodado * 2.5 + 15
	} 
	method velocidadCrucero(){
		 var resultado = 0
		 if (largo > 120){
		 	resultado = rodado + 6 }
		 else{resultado = rodado + 2}
		 return resultado 
	}
	method carga(){
		 return accesorios.sum({cosa=>cosa.carga()})
	}
	method peso(){
		const pesoTotalAcc =  accesorios.sum({cosa=>cosa.peso()})
		return  rodado / 2  + pesoTotalAcc
	}
	method tieneLuz(){
		 
		return accesorios.any({cosa=>cosa.esLuminoso()})
	}
	method cantidadAccesoriosLivianos(){
		return accesorios.count({cosa=>cosa.peso()<=1})
	}
	method agregarAccesorio(objeto){
		 accesorios.add(objeto)
	}
	method tieneAccesorio(){
		 
		return !accesorios.isEmpty()
	}			
} 
