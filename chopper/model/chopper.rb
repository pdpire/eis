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
    end
  end

end

  