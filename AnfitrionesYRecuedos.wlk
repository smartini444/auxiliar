class Anfitrion inherits Personaje{
	
	var velocidadDeProcesamiento
	const recuerdos = []
	 
	
	method felicidad{self.calcularFelicidad()
		return felicidad
	}
	method velocidadDeProcesamiento(){
		return velocidadDeProcesamiento
	}
	method velocidadDEProcesamiento(unValor){velocidadDeProcesamiento = unValor}
	
	override method calcularFelicidad(){
			felicidad = self.energia()/self.velocidadDeProcesamiento()
		}
	
	}
	override method recorrer(nuevoEscenario){
		super()
		recuerdos.add(new Recuerdo(descripcion "conocer nuevo lugar",escenario = nuevoEscenario))
	}

	override method matar(){if(esRebelde){
		super()
		self.velocidadDeProcesamiento(0)
				}
		}

	override method interactuar(personaje){
		super()
		self.velocidadDeProcesamiento(self.velocidadDeProcesamiento()/2)
		
	}

	
}




class Recuerdo{
	var descripcion
	const escenario
	method descripcion(){return descripcion}
	method emotividad{
		return self.descripcion.length * escenario.fama()
	}
}



const Dolores = new Anfitrion(energia = 90,velocidadDeProcesamiento = 0.8,[ConocerElAmorDeSuVida])
const ConocerElAmorDeSuVida = new Recuerdo(descripcion " conoció al amor de su vida",escenario = cantina)

