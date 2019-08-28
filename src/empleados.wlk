object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var deuda = 0
	var dinero = 0
	var sueldo = 0
	var totalCobrado = 0
	
	
		method cobrarSueldo(){								
		dinero += self.sueldo()				//LE SUMA AL DINERO AHORRADO EL SUELDO QUE TIENE QUE COBRAR
		totalCobrado += self.sueldo()		//ES LA SUMA DE TODOS LOS SUELDOS COBRADOS SIN IMPORTAR LO QUE GASTE				
	}
	
	
	method totalDeuda(){return deuda}
	method totalDinero() {return dinero}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }		//ASIGNA UN NUEVO VALOR AL SUELDO.
	method gastar(cuantoDinero) {
		if(cuantoDinero > dinero){							//SI EL DINERO A GASTAR ES MAYOR A SUS AHORROS
		deuda = cuantoDinero - dinero						//DEJA SUS AHORROS EN 0 Y LA DIFERENCIA QUEDA 
		dinero = 0											//COMO DEUDA.
		}
		else {
			if(cuantoDinero < dinero){
				dinero -= cuantoDinero
			}
			else {
				dinero = 0
				deuda = 0
			}
		}
	}								
}
	
	


object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var deuda = 0
	var dinero = 0
	var sueldo = 0
	var totalCobrado = 0
	method cobrarSueldo(){
		dinero += self.sueldo()
		totalCobrado += self.sueldo()
	}
	method totalDeuda(){return deuda}
	method totalDinero() {return dinero}
	
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method gastar(cuantoDinero) {
		if(cuantoDinero > dinero){
		deuda = cuantoDinero - dinero
		dinero = 0
		}
		else {
			if(cuantoDinero < dinero){
				dinero -= cuantoDinero
			}
			else {
				dinero = 0
				deuda = 0
			}
		}
	}				
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() {
		
	 return cantidadEmpanadasVendidas * montoPorEmpanada  		//EL SUELDO DEPENDE DE LAS EMPANADAS VENDIDAS
	}															
}
object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()  // EN ESTA LINEA MODIFICA EL DINERO DE GIMENEZ.
								empleado.cobrarSueldo()		//EN ESTA LINEA HACE QUE EL EMPLEADO COBRE EL
							  }								//DINERO QUE GIMENEZ LE PAGO.
}
