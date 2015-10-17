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
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^ubico mi barco destructor$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^no se puede ubicar$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^la posicion (\d+),(\d+) esta fuera del tablero$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^ubico mi barco crucero$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
