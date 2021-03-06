require_relative '../model/tablero'

class Tablero
   
   def initialize(x,y)
    @tablero = Hash.new
    @ancho = x
    @alto = y
    for a in 0..x
      for b in 0..y
        @tablero[[a,b]] = "vacio"
      end
    end
  end

  def completo
  	return @tablero
  end

  def get_alto
  	return @alto
  end

  def get_ancho
  	return @ancho
  end

  def posicion(x, y)
    return @tablero[[x,y]]
  end

  def poner_en_celda(x, y, elem)
    @tablero[[x,y]] = elem
  end

  def golpea_o_hunde(id)
    @res = true
    for x in 0..get_ancho
      for y in 0..get_alto
        if posicion(x,y) == id
          @res = false
        end
      end
    end
    if @res
      return "se hundio"
    else
      return "golpea"
    end
  end

end