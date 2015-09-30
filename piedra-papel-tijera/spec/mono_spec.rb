require 'rspec'
require_relative '../model/mono'

describe 'Mono' do

    let(:mono) { Mono.new }	

	it 'deberia perder con tijera' do
		mono = Mono.new
		expect(mono.versus("tijera")).to eq "pierde"
    end

end