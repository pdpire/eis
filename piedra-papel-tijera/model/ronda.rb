class Ronda


  def jugarRonda(j1, j2)
  	if j1.verJugada.versus(j2.verJugada) == "gana"
  		return "jugador1"
  	elsif j1.verJugada.versus(j2.verJugada) == "pierde"
  		return "jugador2"
  	else
  		return "empate"
  	end
  end

end