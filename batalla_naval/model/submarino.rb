class Submarino

  def initialize
  	@tamaño = 1
  end

  def poner_horizontal(posX, posY, tablero)
  	tablero[posX][posY] = "submarinoPos1"
  end

  def poner_vertical(posX, posY, tablero)
  	tablero[posX][posY] = "submarinoPos1"
  end
end
