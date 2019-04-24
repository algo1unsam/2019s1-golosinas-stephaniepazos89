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
	 // el forEach en el cual es una accion que cae en todos los objetos

}
	method hayGolosinaSinTACC(){
		return golosinas.any({golosina => golosina.libreGluten()})
	}
	method preciosCuidados(){
		return golosinas.all({golosina=>golosina.precio()<=10})
	}
	method golosinaDeSabor(unSabor){
		return golosinas.find({golosina => golosina.gusto()==unSabor})
	}
	method golosinasDeSabor(unSabor){
		return golosinas.filter({golosina => golosina.gusto()==unSabor})
	}
	method sabores(){
		return golosinas.map({golosina => golosina.gusto()}).asSet()
		//asSet devuelve los objetos sin repetir
		//map devuelve una nueva lista con los sabores de cada uno
	}
	method golosinaMasCara(){
		return golosinas.max({golosina=> golosina.precio()})
	}
	
	method pesoGolosinas(){
		return golosina.sum({golosina => golosina.peso()})
	}

	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinas)
				
		}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(golosinas.map{golosina=>golosina.gusto()})
	}
	
}

