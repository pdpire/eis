class Crucero
  
  @id

  def set_id(n)
  	@id = n
  end

  def get_id
  	return @id
  end

  def poner_horizontal(x, y, tablero)
  	tablero.poner_en_celda(x,y, get_id)
  	tablero.poner_en_celda(x+1,y, get_id)
  end

  def poner_vertical(posX, posY, tablero)
  	tablero.poner_en_celda(x,y, get_id)
  	tablero.poner_en_celda(x,y+1, get_id)
  end
end
