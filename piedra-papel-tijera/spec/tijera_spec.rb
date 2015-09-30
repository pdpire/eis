require 'rspec'
require_relative '../model/tijera'

describe 'Tijera' do

    let(:tijera) { Tijera.new }	

	it 'deberia perder con piedra' do
		tijera = Tijera.new
		piedra = Piedra.new
		expect(tijera.versus(piedra)).to eq "pierde"
    end

    it 'deberia ganarle a papel' do
		tijera = Tijera.new
		papel = Papel.new
		expect(tijera.versus(papel)).to eq "gana"
    end

    it 'deberia ganarle a mono' do
		tijera = Tijera.new
		mono = Mono.new
		expect(tijera.versus(mono)).to eq "gana"
    end

    it 'deberia empatar con tijera' do
		tijera = Tijera.new
		tijera2 = Tijera.new
		expect(tijera.versus(tijera2)).to eq "empate"
    end

end