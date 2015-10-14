require 'rspec'
require_relative '../model/submarino'
require_relative '../model/batalla_naval'

describe 'Submarino' do

  let(:submarino) { Submarino.new }	
    
    it 'deberia poner submarino en pos 1,1' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(2,2)
	  @sub = Submarino.new
	  @sub.poner_horizontal(1, 1, @batalla.get_tablero)

	  expect(@batalla.get_tablero[1][1]).to eq "submarinoPos1"
    end
end
