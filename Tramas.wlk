class Trama {
	const personajes {}
	const escenarioPrincipal
	
	method escenarioPrincipal(){return escenarioPrincipla}
	method personajes(){return personajes}
	
	method complejidad(){
		return (escenarioPrincipal.fama() / personajes.max({unPersonaje => unPersonaje.felicidad()}))
	}
	
	method renovar(){
		escenarioPrincipal.evolucionar()
		personajes.forEach({unPersonaje => unPersonaje.matar()})
	}
	
	method cruzarCon(unaTrama){
		personajes.forEach({unPersonaje => unPersonaje.ConocerEscenario(unaTrama.escenarioPrincipal())})
		personajes.forEach({unPersonaje => unPersonaje.interactuar(unaTrama.personajes())})
	}
	
	method esPicante(){
		return personajes.all({unPersonaje => unPersonaje.esRebelde()})
	}
	
}
