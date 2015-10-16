class Crucero
  
  def initialize
    @id
    @tamanio = 2
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
  	tablero.poner_en_celda(x+1,y, get_id)
  end

  def poner_vertical(x, y, tablero)
  	tablero.poner_en_celda(x,y, get_id)
  	tablero.poner_en_celda(x,y+1, get_id)
  end
end
