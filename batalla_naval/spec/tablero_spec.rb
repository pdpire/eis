require 'rspec'
require_relative '../model/tablero'

describe 'Tablero' do

  let(:tablero) { Tablero.new }	
    
    it 'deberia poner ocupado es pos 2,1' do
	  @tablero = Tablero.new
	  @tablero.poner_en_celda(2,1,"ocupado")
	  expect(@tablero.posicion(2,1)).to eq "ocupado"
    end
end
