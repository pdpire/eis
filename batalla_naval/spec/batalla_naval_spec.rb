require 'rspec'
require_relative '../model/batalla_naval'
require_relative '../model/submarino'
require_relative '../model/destructor'

describe 'Batalla_naval' do

  let(:batalla_naval) { Batalla_naval.new }	
    
    it 'deberia poner submarino en pos 2,1' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(3,3)
	  @sub = Submarino.new(15)
	  @batalla.poner_barco(2, 1, @sub, "horizontal")

	  expect(@batalla.get_tablero.posicion(2,1)).to eq 15
    end

    it 'deberia poner destructor en pos 2,1 en horizontal' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(5,5)
	  @sub = Destructor.new(15)
	  @batalla.poner_barco(2, 1, @sub, "horizontal")

	  expect(@batalla.get_tablero.posicion(2,1)).to eq 15
	  expect(@batalla.get_tablero.posicion(3,1)).to eq 15
	  expect(@batalla.get_tablero.posicion(4,1)).to eq 15
    end

    it 'no deberia poner por tablero chico en horizontal' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(3,3)
	  @sub = Submarino.new(15)
	  begin
	    @batalla.poner_barco(4, 2, @sub, "horizontal")
	  rescue Exception => e
        @excepcion = e
      end

	  expect(@excepcion.message).to eq 'fuera de rango'
    end


    it 'no deberia poner por tablero chico en vertical' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(3,3)
	  @sub = Submarino.new(15)
	  begin
	    @batalla.poner_barco(2, 5, @sub, "vertical")
	  rescue Exception => e
        @excepcion = e
      end

	  expect(@excepcion.message).to eq 'fuera de rango'
    end


    it 'no deberia poner por pos ocupada' do
	  @batalla = Batalla_naval.new
	  @batalla.crear_tablero(8,8)
	  @sub = Submarino.new(15)
	  @des = Destructor.new(20)
	  @batalla.poner_barco(2, 5, @sub, "vertical")
	  begin
	    @batalla.poner_barco(1, 5, @des, "horizontal")
	  rescue Exception => e
        @excepcion = e
      end

	  expect(@excepcion.message).to eq 'fuera de rango'
    end
end
