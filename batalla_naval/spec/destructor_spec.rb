require 'rspec'
require_relative '../model/destructor'
require_relative '../model/tablero'

describe 'Destructor' do

  let(:destructor) { Destructor.new }	
    
    it 'deberia poner destructor desde pos 2,3 en horizontal' do
	  @tablero = Tablero.new(6,6)
	  @sub = Destructor.new
	  @sub.set_id(30)
	  @sub.poner_horizontal(2, 3, @tablero)

	  expect(@tablero.posicion(2,3)).to eq 30
	  expect(@tablero.posicion(3,3)).to eq 30
	  expect(@tablero.posicion(4,3)).to eq 30
    end

    it 'deberia poner destructor desde pos 2,3 en vertical' do
	  @tablero = Tablero.new(6,6)
	  @sub = Destructor.new
	  @sub.set_id(30)
	  @sub.poner_vertical(2, 3, @tablero)

	  expect(@tablero.posicion(2,3)).to eq 30
	  expect(@tablero.posicion(2,4)).to eq 30
	  expect(@tablero.posicion(2,5)).to eq 30
    end
end
