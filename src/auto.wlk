import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "personaje.png"
	var position = game.origin()
	var movimientosPosibles = 10 
	
	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method position(nuevaPosicion) { position = nuevaPosicion }
	
	
}

object sonido {
	
	method play(){
		game.sound("movimiento.mp3").play()
	}
}

