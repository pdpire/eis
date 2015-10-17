require_relative '../../model/batalla_naval'

Given(/^la posicion (\d+),(\d+) que esta vacia$/) do |arg1, arg2|
  @batalla = Batalla_naval.new
  @batalla.crear_tablero(6,6)
end

When(/^ubico mi barco submarino$/) do
  @sub = @batalla.get_submarino
  @batalla.poner_barco(4, 3, @sub, "horizontal")
end

Then(/^se ubica exitosamente$/) do
  @estado_43 = @batalla.consultar_estado_en(4,3)

  expect(@estado_43).to eq @sub.get_id
end

Given(/^la posicion (\d+),(\d+) esta ocupada$/) do |arg1, arg2|
  @batalla2 = Batalla_naval.new
  @batalla2.crear_tablero(6,6)
  @sub = @batalla2.get_submarino
  @batalla2.poner_barco(4, 3, @sub, "horizontal")
end

When(/^ubico mi barco destructor$/) do
  @des = @batalla2.get_destructor
  begin
    @batalla2.poner_barco(4, 3, @des, "horizontal")
  rescue Exception => e
    @excepcion = e
  end
end

Then(/^no se puede ubicar$/) do
  expect(@excepcion.message).to eq 'fuera de rango'
end

Given(/^la posicion (\d+),(\d+) esta fuera del tablero$/) do |arg1, arg2|
  @batalla3 = Batalla_naval.new
  @batalla3.crear_tablero(5,5)
end

When(/^ubico mi barco crucero$/) do
  @cru = @batalla3.get_crucero
  begin
    @batalla3.poner_barco(6, 6, @cru, "horizontal")
  rescue Exception => e
    @excepcion = e
  end
end

Then(/^no se puede ubicar en esa pos$/) do
  expect(@excepcion.message).to eq 'fuera de rango'
end

