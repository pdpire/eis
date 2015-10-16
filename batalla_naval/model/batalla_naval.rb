require_relative '../model/tablero'

class Batalla_naval

  def crear_tablero
    @tablero = Tablero.new
  end

  def get_tablero
  	return @tablero
  end

  def poner_en_celda(x,y,elem)
    @tablero[[x,y]] = elem
  end

  def poner_barco(posX, posY, barco, dir)
    if dir == "horizontal"
      barco.poner_horizontal(posX, posY, get_tablero)
    else
      barco.poner_vertical(posX, posY, get_tablero)
    end
  end
end


