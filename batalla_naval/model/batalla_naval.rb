require_relative '../model/tablero'

class Batalla_naval

  def crear_tablero(x,y)
    @tablero = Tablero.new(x,y)
  end

  def get_tablero
  	return @tablero
  end

  def poner_en_celda(x,y,elem)
    @tablero[[x,y]] = elem
  end

  def poner_barco(x, y, barco, dir)
    if dir == "horizontal"
      if puedo_poner_horizontal(x,y,barco)
        barco.poner_horizontal(x, y, get_tablero)
      else
        raise "fuera de rango"
      end
    else
      if puedo_poner_vertical(x,y,barco)
        barco.poner_vertical(x, y, get_tablero)
      else
        raise "fuera de rango"
      end
    end
  end

  def puedo_poner_horizontal(x, y, barco)
    @res = true
    if (get_tablero.get_ancho) >= (x+barco.get_tamanio-1)
      for i in x..(get_tablero.get_ancho)
        if get_tablero.posicion(i,y) != "vacio"
          @res = false
        end
      end
    else
      @res = false
    end
    return @res
  end

   def puedo_poner_vertical(x, y, barco)
    @res = true
    if (get_tablero.get_alto) >= (y+barco.get_tamanio-1)
      for i in y..(get_tablero.get_alto)
        if get_tablero.posicion(x,i) != "vacio"
          @res = false
        end
      end
    else
      @res = false
    end
    return @res
  end
end


