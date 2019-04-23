import golosinas.*
import juliana.*
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
	//devuelve las golosinas que juliana quiere y mariano no tiene
	method golosinasFaltantes(golosinasDeseadas){
		return juliana.golosinasqueMarianoNoTiene()
			
		}
	//verifica si mariano tiene la golosina que le gusta a juliana
	method tieneLasGolosinas(){
		var golosinasDeseadas=juliana.golosina()
		//golosinas que le gustan a juliana y tiene mariano
			return golosinasDeseadas.filter({golosinaDeseada => golosinas.contains(golosinaDeseada)})
		}
		
	method seLlevaLaGolosina(){
		
		juliana.robarGolosina(self.tieneLasGolosinas())
		self.desechar(self.tieneLasGolosinas())
	}
	

}

