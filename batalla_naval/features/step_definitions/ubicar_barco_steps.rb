Given(/^la posicion (\d+),(\d+) que esta vacia$/) do |arg1, arg2|
=begin
  batalla = Batalla_naval.new
=end
end

When(/^ubico mi barco submarino$/) do
=begin
  batalla.ubicar_barco(1, 1, "submarino", "horizontal")
=end
end

Then(/^se ubica exitosamente$/) do
=begin
  @estado_11 = batalla.consultar_estado_en(1,1)
  @estado_12 = batalla.consultar_estado_en(1,2)

  expect(@estado_11).to eq "ocupado"
  expect(@estado_12).to eq "ocupado"
=end
end

Given(/^la posicion (\d+),(\d+) esta ocupada$/) do |arg1, arg2|

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
