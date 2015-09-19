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
    
    if list == []
      return "vacio"
    end

    @total = 0
    list.each do |number|
      @total = @total + number
    end

    @stNum = @total.to_s

    if @total > 99
      return "demasiado grande"
    elsif @total < 10
      printNumber(@stNum)
    else
      printNumber(@stNum[0])<<","<<printNumber(@stNum[1])
    end
    

  end

  def printNumber(stNum)
    case stNum
    when "0"
      return "cero"
    when "1"
      return "uno"
    when "2"
      return "dos"
    when "3"
      return "tres"
    when "4"
      return "cuatro"
    when "5"
      return "cinco"
    when "6"
      return "seis"
    when "7"
      return "siete"
    when "8"
      return "ocho"
    when "9"
      return "nueve"
    end
  end

end

  