class Batalla_naval

  def initialize()
    @tablero = [
      ["vacio", "vacio", "vacio", "vacio"],
      ["vacio", "vacio", "vacio", "vacio"],
      ["vacio", "vacio", "vacio", "vacio"],
      ["vacio", "vacio", "vacio", "vacio"]
    ]
  end

  def get_tablero()
  	return @tablero
  end

  def poner_barco(posX, posY, tipo, dir)
  	@tablero[1][1] = "ocupado"
  	@tablero[1][2] = "ocupado"
  end
end


