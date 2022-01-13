class Personaje{
	var energia
	var felicidad


method energia(){
		return energia
	}

method energia(unValor){
		energia = unValor
	}

method felicidad(){
		self.calcularFelicidad()
		return felicidad}
		
method calcularFelicidad(){}

method ObtenerNivelDeRebeldia(){
		return 1/self.felicidad()
	}

method esRebelde{
		self.ObtenerNivelDeRebeldia > 10}
	
method ConocerEscenario(nuevoEscenario){
	self.recorrer(nuevoEscenario)
	escenario.recorrido()
}
method recorrer(escenario){
		energia -= escenario.fama()
	}


method matar(){
	self.energia(0)
}

method interactuar(personaje){
		self.energia(self.energia() / 2)
	}	
	
}