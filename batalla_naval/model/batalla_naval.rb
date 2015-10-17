require_relative '../model/tablero'
require_relative '../model/submarino'
require_relative '../model/crucero'
require_relative '../model/destructor'


class Batalla_naval

  def crear_tablero(x,y)
    @tablero = Tablero.new(x,y)
    @lista_submarinos = [Submarino.new(01), Submarino.new(02), Submarino.new(03), Submarino.new(04), Submarino.new(05)]
    @lista_cruceros = [Crucero.new(11), Crucero.new(12), Crucero.new(13), Crucero.new(14), Crucero.new(15)]
    @lista_destructores = [Destructor.new(21), Destructor.new(22), Destructor.new(23), Destructor.new(24), Destructor.new(25)]
  end

  def get_tablero
  	return @tablero
  end

  def get_submarino
    @sub = @lista_submarinos[0]
    @lista_submarinos.drop(1)
    return @sub 
  end


  def get_crucero
    @cru = @lista_cruceros[0]
    @lista_cruceros.drop(1)
    return @cru 
  end


  def get_destructor
    @des = @lista_destructores[0]
    @lista_destructores.drop(1)
    return @des 
  end




  def poner_en_celda(x,y,elem)
    @tablero[[x,y]] = elem
  end

  def consultar_estado_en(x,y)
    @tablero.posicion(x,y)
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

   def disparar_a_celda(x, y)
    if @tablero.posicion(x,y) == "vacio"
      return "agua"
    else
      @barco_id = get_tablero.posicion(x,y)
      get_tablero[[x,y]] = "vacio"
      return @tablero.golpea_o_hunde(@barco_id)
    end
  end 

end


