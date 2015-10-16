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


  def alto
  	return @alto
  end


  def ancho
  	return @ancho
  end

  def posicion(x, y)
    return @tablero[[x,y]]
  end

  def poner_en_celda(x, y, elem)
    @tablero[[x,y]] = elem
  end

end