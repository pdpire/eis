class Batalla_naval

  def crear_tablero(x, y)
    @tablero = [["vacio"] * y] * x
  end

  def get_tablero
  	return @tablero
  end

  def poner_barco(posX, posY, barco, dir)
    if dir == "horizontal"
      barco.poner_horizontal(posX, posY, get_tablero)
    else
      barco.poner_vertical(posX, posY, get_tablero)
    end
  end

=begin
  def poner_horizontal(posX, posY, tipo)
    if tipo = "submarino"
      poner_submarino_horizontal(posX, posY)
    elsif tipo = "crucero"
      poner_crucero_horizontal(posX, posY)
    else
      poner_destructor_horizontal(posX, posY)
    end
  end

  def poner_vertical(posX, posY, tipo)
    if tipo = "submarino"
      poner_submarino_vertical(posX, posY)
    elsif tipo = "crucero"
      poner_crucero_vertical(posX, posY)
    else
      poner_destructor_vertical(posX, posY)
    end
  end


  def estoy_en_rango(posX, posY, tipo, dir)
    if dir == "horizontal"
      revisar_rango_submarino(posX, posY)
    elsif dir == "vertical"


=begin
  def poner_barco(posX, posY, tipo_b, dir)
    if puedo_ubicar_barco(posX, posY, tipo_b, dir)
      if dir == "vertical" 
        poner_barco_vertical(posX, posY, tipo_b)
      else 
        poner_barco_horizontal(posX, posY, tipo_b)
      end
    else
      raise 'posición ya ocupada'
    end
  end

  def puedo_ubicar_barco(posX, posY, tipo_b, dir)
    flag_h = true
      if(dir == "horizontal")
        tamanio = tamanio_barco(tipo_b)
        #delegar en otro metodo
        if (posX+tamanio) > 4
          raise "posicion fuera del tablero"
        end 
        flag_h = puedo_poner_horizontal(posX, posY, tipo_b)
      else
        tamanio = tamanio_barco(tipo_b)
        #delegar en otro metodo
        if (posY+tamanio) > 4
          raise "posicion fuera del tablero"
        end 
        flag_h = puedo_poner_vertical(posX, posY, tipo_b)
      end 
    return flag_h
  end
=end
end


