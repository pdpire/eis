require 'rspec'
require_relative '../model/batalla_naval'
require_relative '../model/submarino'

describe 'Batalla_naval' do

  let(:batalla_naval) { Batalla_naval.new }	
    
    it 'deberia poner submarino en pos 0,0' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(2,1)
	  @sub = Submarino.new
	  @batalla.poner_barco(0, 0, @sub, "horizontal")

	  expect(@batalla.get_tablero[0][0]).to eq "submarinoPos1"
    end
end
