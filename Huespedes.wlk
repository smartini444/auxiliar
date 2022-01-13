class Huespede inherits Personaje{

	
	var tiempoEnParque
	const mejoresAmigos = {}
	 
	
	
	method tiempoEnParque(){
		return tiempoEnParque
	}
	
	method tiempoEnParque(unValor){
		tiempoEnParque = unValor
	}
	
	
	override method calcularFelicidad(){
		felicidad = self.tiempoEnParque * self.felicidadDeMisAmigos()
	}
	method felicidadDeMisAmigos(){
		return mejoresAmigos.sum({mejorAmigo=>mejorAmigo.felicidad()})
	}
	
	override method recorrer(escenario){
		super()
		tiempoEnParuqe -= 10
		
	}
	
	override method matar(){if(esRebelde){
		super()
		self.tiempoEnParque(0)
				}
		}
	override method interactuar(personaje){
		super()
		mejoresAmigos.add(personaje)
		
	}
}
	
	
	
	
	const William = new Huesped(energia = 70,tiempoEnParque = 3600,{Dolores})