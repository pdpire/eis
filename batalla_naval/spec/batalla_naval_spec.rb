require 'rspec'
require_relative '../model/batalla_naval'
require_relative '../model/submarino'

describe 'Batalla_naval' do

  let(:batalla_naval) { Batalla_naval.new }	
    
    it 'deberia poner submarino en pos 2,1' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(3,3)
	  @sub = Submarino.new
	  @sub.set_id(15)
	  @batalla.poner_barco(2, 1, @sub, "horizontal")

	  expect(@batalla.get_tablero.posicion(2,1)).to eq 15
    end
end
