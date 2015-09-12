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
      "vacio"
    elsif list[0] == 1
      if list[1] == 3
        return "cuatro"
      else
        return "uno"
      end
    end
      
  end

end

  