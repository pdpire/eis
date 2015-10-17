Given(/^un tablero vacio$/) do
  @batalla = Batalla_naval.new
  @batalla.crear_tablero(6,6)
end

When(/^Disparo a la coordenada (\d+) (\d+)$/) do |arg1, arg2|
  @res = @batalla.disparar_a_celda(2, 2)
end

Then(/^disparo al agua$/) do
  expect(@res).to eq "agua"
end

Given(/^un barco ubicado en la posicion (\d+) (\d+)$/) do |arg1, arg2|
  @batalla2 = Batalla_naval.new
  @batalla2.crear_tablero(6,6)
  @cru = @batalla2.get_crucero
  @batalla2.poner_barco(2, 2, @cru, "horizontal")
end

When(/^Disparo a la coordenada (\d+) (\d+) ocupada$/) do |arg1, arg2|
  @res2 = @batalla2.disparar_a_celda(2, 2)
end

Then(/^acierto al barco pero no lo hundo$/) do
  expect(@res2).to eq "golpea"
end

Given(/^un barco ubicado en las coordenadas (\d+) (\d+)$/) do |arg1, arg2|
  @batalla3 = Batalla_naval.new
  @batalla3.crear_tablero(6,6)
  @sub = @batalla3.get_submarino
  @batalla3.poner_barco(3, 3, @sub, "horizontal")
end

When(/^Disparo a la coordena (\d+) (\d+) ya ocupada$/) do |arg1, arg2|
  @res3 = @batalla3.disparar_a_celda(3, 3)
end

Then(/^acierto al barco y es hundido$/) do
  expect(@res3).to eq "se hundio"
end

