require 'rspec'
require_relative '../model/crucero'
require_relative '../model/tablero'

describe 'Crucero' do

  let(:crucero) { Crucero.new }	
    
    it 'deberia poner crucero desde pos 3,2 en horizontal' do
	  @tablero = Tablero.new(5,5)
	  @sub = Crucero.new
	  @sub.set_id(20)
	  @sub.poner_horizontal(3, 2, @tablero)

	  expect(@tablero.posicion(3,2)).to eq 20
	  expect(@tablero.posicion(4,2)).to eq 20
    end


    it 'deberia poner crucero desde pos 3,2 en vertical' do
	  @tablero = Tablero.new(5,5)
	  @sub = Crucero.new
	  @sub.set_id(20)
	  @sub.poner_vertical(3, 2, @tablero)

	  expect(@tablero.posicion(3,2)).to eq 20
	  expect(@tablero.posicion(3,3)).to eq 20
    end
end
