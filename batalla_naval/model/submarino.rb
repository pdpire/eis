
class Submarino

  def initialize(n)
    @id = n
    @tamanio = 1
  end

  def set_id(n)
  	@id = n
  end

  def get_id
  	return @id
  end


  def get_tamanio
  	return @tamanio
  end

  def poner_horizontal(x, y, tablero)
  	tablero.poner_en_celda(x,y, get_id)
  end

  def poner_vertical(x, y, tablero)
  	tablero.poner_en_celda(x,y, get_id)
  end
end
