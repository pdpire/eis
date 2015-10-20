class Calculadora

  @cant_op

  def initialize
  	@cant_op = 0
  end

  def get_cant_op
    return @cant_op
  end

  def agregar_op
  	@cant_op = @cant_op + 1
  end

end 