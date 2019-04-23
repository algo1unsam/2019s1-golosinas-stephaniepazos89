import mariano.*
object juliana {
	var golosinasDeseadas=[]
	var bolsa=[]
	
	method agregarALaBolsa(golosina){golosinasDeseadas.add(golosina)}
	
	method golosina(){
		return golosinasDeseadas
	}
	
	method bolsita(){return bolsa}
	
	method robarGolosina(gol){bolsa.add(gol)}
	
	
//	method gusta(){mariano.golosinasFaltantes(golosinasqueMarianoTiene)}

method golosinasqueMarianoNoTiene(){
	return golosinasDeseadas.filter{golosinasDeseada =>bolsa.contains(golosinasDeseada)} 
}
	
	
}
