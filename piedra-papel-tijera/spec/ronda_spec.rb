require 'rspec'
require_relative '../model/ronda'
require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'

describe 'Ronda' do

    let(:ronda) { Ronda.new }	

	it 'deberia ganarla jugador2' do
		ronda = Ronda.new

		jug1 = Jugador.new
		jug2 = Jugador.new

		tijera = Tijera.new
		piedra = Piedra.new

		jug1.elegir(tijera)
		jug2.elegir(piedra)

		ronda.setearJugadores(jug1, jug2)

		expect(ronda.jugarRonda).to eq "jugador2"
    end


end