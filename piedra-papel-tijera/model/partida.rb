class Partida


@jugador1
@jugador2
@ganadasPor1
@ganadasPor2

  def initialize
  	@ganadasPor1 = 0
    @ganadasPor2 = 0
  end


  def setearJugadores(j1, j2)
  	@jugador1 = j1
  	@jugador2 = j2
  end


  def jugar(ronda)

    if ronda.jugarRonda(@jugador1, @jugador2) == "jugador1"
        @ganadasPor1 += 1
    elsif ronda.jugarRonda(@jugador1, @jugador2) == "jugador2"
        @ganadasPor2 += 1
    end

  end
  
  def resultado
  	if @ganadasPor1 > @ganadasPor2
  		return "gano jugador1"
    elsif @ganadasPor2 > @ganadasPor1
        return "gano jugador2"
    else
        return "empate"
    end
  end

end 

