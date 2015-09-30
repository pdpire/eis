require 'rspec'
require_relative '../model/mono'

describe 'Mono' do

    let(:mono) { Mono.new }	

	it 'deberia perder con tijera' do
		mono = Mono.new
		expect(mono.versus("tijera")).to eq "pierde"
    end

    it 'deberia empatar con piedra' do
		mono = Mono.new
		expect(mono.versus("piedra")).to eq "empate"
    end

    it 'deberia ganarle a papel' do
		mono = Mono.new
		expect(mono.versus("papel")).to eq "gana"
    end

    it 'deberia empatar con mono' do
		mono = Mono.new
		expect(mono.versus("mono")).to eq "empate"
    end




end