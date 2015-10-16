require 'rspec'
require_relative '../model/submarino'
require_relative '../model/tablero'

describe 'Submarino' do

  let(:submarino) { Submarino.new }	
    
    it 'deberia poner submarino en pos 4,3' do
	  @tablero = Tablero.new
	  @sub = Submarino.new
	  @sub.poner_horizontal(2, 1, @tablero)

	  expect(@tablero.posicion(2,1)).to eq "submarinoPos1"
    end
end
