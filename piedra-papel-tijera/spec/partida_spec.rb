require 'rspec'
require_relative '../model/ronda'
require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'
require_relative '../model/partida'

describe 'Partida' do

    let(:partida) { Partida.new }	

	it 'deberia ganarla jugador2' do
		partida = Partida.new
		jug1 = Jugador.new
		jug2 = Jugador.new
		tijera = Tijera.new
		piedra = Piedra.new
		papel = Papel.new
		mono = Mono.new
		ronda = Ronda.new
		
		partida.setearJugadores(jug1, jug2)

		jug1.elegir(tijera)
		jug2.elegir(piedra)

		partida.jugar(ronda)

		jug1.elegir(piedra)
		jug2.elegir(papel)

		partida.jugar(ronda)

		expect(partida.resultado).to eq "gano jugador2"
    end

end