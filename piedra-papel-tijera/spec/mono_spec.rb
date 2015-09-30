require 'rspec'
require_relative '../model/mono'

describe 'Mono' do

    let(:mono) { Mono.new }	

	it 'deberia perder con tijera' do
		mono = Mono.new
		tijera = Tijera.new
		expect(mono.versus(tijera)).to eq "pierde"
    end

    it 'deberia empatar con piedra' do
		mono = Mono.new
		piedra = Piedra.new
		expect(mono.versus(piedra)).to eq "empate"
    end

    it 'deberia ganarle a papel' do
		mono = Mono.new
		papel = Papel.new
		expect(mono.versus(papel)).to eq "gana"
    end

    it 'deberia empatar con mono' do
		mono = Mono.new
		mono2 = Mono.new
		expect(mono.versus(mono2)).to eq "empate"
    end




end