class Escenario{
	const nombre
	var fama
	var categoria
	
	method categoria(){return categoria}
	method fama(){return fama}
	
	method FamaPorCategoria{
		self.hacerMasFamoso(categoria.afectarFama())
	}
	
	method hacerMasFamoso(unValor){
		fama += unValor
	}
	method recorrido(){
		if(self.categoria() == DeLujo){DeLujo.sumarVisitas(1)}
	
	}
	method evolucionar(){
		if(self.categoria == bajoCoste){categoria = Estandar}
		else{if(self.categoria == Estandar){categoria = DeLujo}
			else{throw new Exception(message= "Ya No Puede Evolucionar")}
		}
	}
	
	
}

object bajoCoste{
	var zona;
	method zona(){return zona}
	method afectarFama(){return self.zona().length()}
}

object Estandar{
	method afectarFama(){return 10}
}

object DeLujo{
	var visitas
	method afectarFama(return self.visitas())
	method visitas(){return visitas}
	method sumarVisitas(unValor){visitas += unValor}
}