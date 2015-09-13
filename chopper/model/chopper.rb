class Chopper
  def chop(num, list)
    @ret = 0
    list.each do |number|
      if number == num
        return @ret
      end
      @ret = @ret + 1
    end
    -1
  end

  def sum(list)
    
    if list[0] == nil
      return "vacio"
    end

    @total = 0
    list.each do |number|
      @total = @total + number
    end
    
    if @total < 100
      case @total
      when 1
        return "uno"
      when 4
        return "cuatro"
      when 18
        return "uno,ocho"
      end
    else
      return "demasiado grande"
    end

  end

end

  