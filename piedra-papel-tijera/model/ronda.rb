class Ronda

@jugador1
@jugador2
@ganador

  def setearJugadores(j1, j2)
  	@jugador1 = j1
  	@jugador2 = j2
  end

  def jugarRonda
  	if @jugador1.verJugada.versus(@jugador2.verJugada) == "gana"
  		@ganador = "jugador1"
  	else
  		@ganador = "jugador2"
  	end
  	return @ganador
  end
end