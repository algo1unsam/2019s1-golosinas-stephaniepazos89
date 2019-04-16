import golosinas.*
object mariano{
	var golosinas=[]
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	
	method comprar(golosina) {golosinas.add(golosina) }
	method desechar(golosina){golosinas.remove(golosina)}
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return golosinas 
	}
	
	method probarGolosinas(){
	 golosinas.forEach({golosina => golosina.mordisco() })

}
	method hayGolosinaSinTACC(){
		return golosinas.any({golosina => golosina.libreGluten()})
	}
	method preciosCuidados(){
		return golosinas.all({golosina=>golosina.precio()>=10})
	}
	method golosinaDeSabor(unSabor){}
	method golosinasDeSabor(unSabir){}
	

}

