class Jugador

@eleccion
  
  def elegir(eleccion)
  	@eleccion = eleccion
  end

  def verJugada
  	return @eleccion
  end
end