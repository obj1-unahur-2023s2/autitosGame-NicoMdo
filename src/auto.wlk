import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "1.png"
	var position = game.origin()
	
	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method position(nuevaPosicion) { position = nuevaPosicion }
	method saltar(){
		self.subir()
		game.schedule(300, {self.caer()})
	}
	
	method subir(){
		position = position.up(2)
		image = "2.png"
	}

	method caer(){
		position = position.down(2)
		image = "1.png"
	}
	method moverArriba() {
		position = position.up(1)
		image = "1.png"
	}
	
	method tropezar() {
		image = "3.png"
	}
	
	method moverAbajo() {
		position = position.down(1)
		image = "1.png"
	}
	
	method moverIzquierda() {
		position = position.left(1)
		image = "1.png"
	}
	
	method moverDerecha() {
		position = position.right(1)
		image = "1.png"
	}
	
}

object sonido {
	
	method play(){
		game.sound("movimiento.mp3").play()
	}
	method caida(){
		game.sound("caida.mp3").play()
	}
	method saltar(){
		game.sound("salto.mp3").play()
	}
}

