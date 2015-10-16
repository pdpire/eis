require_relative '../model/tablero'

class Tablero
   
   def initialize()
    @tablero = Hash.new
    @n = 0
    for x in 0..4
      for y in 0..4
        @tablero[[x,y]] = "libre"
      end
    end
  end

  def completo
  	return @tablero
  end

  def posicion(x, y)
    return @tablero[[x,y]]
  end

  def poner_en_celda(x, y, elem)
    @tablero[[x,y]] = elem
  end

end