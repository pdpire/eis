require 'rspec'
require_relative '../model/submarino'
require_relative '../model/tablero'

describe 'Submarino' do

  let(:submarino) { Submarino.new }	
    
    it 'deberia poner submarino en pos 4,3' do
	  @tablero = Tablero.new(5,5)
	  @sub = Submarino.new
	  @sub.set_id(10)
	  @sub.poner_horizontal(4, 3, @tablero)

	  expect(@tablero.posicion(4,3)).to eq 10
    end
end
