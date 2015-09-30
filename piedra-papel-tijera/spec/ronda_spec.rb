require 'rspec'
require_relative '../model/ronda'
require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'

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


		expect(ronda.jugarRonda(jug1, jug2)).to eq "jugador2"
    end

    it 'deberia ganarla jugador1' do
		ronda = Ronda.new

		jug1 = Jugador.new
		jug2 = Jugador.new

		papel = Papel.new
		piedra = Piedra.new

		jug1.elegir(papel)
		jug2.elegir(piedra)

		expect(ronda.jugarRonda(jug1, jug2)).to eq "jugador1"
    end

    it 'deberian empatarla' do
		ronda = Ronda.new

		jug1 = Jugador.new
		jug2 = Jugador.new

		mono = Mono.new
		piedra = Piedra.new

		jug1.elegir(mono)
		jug2.elegir(piedra)

		expect(ronda.jugarRonda(jug1, jug2)).to eq "empate"
    end


end