class Calculadora

  @cant_op

  def initialize
  	@cant_op = 0
  end

  def get_cant_op
    return @cant_op
  end

  def set_cant_op(cant)
    @cant_op = cant
  end

  def agregar_op
  	@cant_op = @cant_op + 1
  end

  def sumar(num1, num2)
    agregar_op
    return num1 + num2
  end

  def restar(num1, num2)
    agregar_op
    return num1 - num2
  end

  def promediar(num1, num2)
    agregar_op
    return (num1 + num2) / 2
  end

  def resetear
    @cant_op = 0
  end

end 