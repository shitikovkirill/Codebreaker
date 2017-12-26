require 'spec_helper'

describe Codebreaker::Game do
  let(:game) { Codebreaker::Game.new(code: '1234', count_attempt: 6, count_hint: 1) }

  it 'Codes are not equal' do
    expect(game.check_code('6565')).to eq('')
  end

  it 'Codes are equal' do
    expect(game.check_code('1234')).to eq('++++')
    expect(game.check_code('1235')).to eq('+++')
    expect(game.check_code('2153')).to eq('---')
    expect(game.check_code('1243')).to eq('++--')
  end

  it 'Get hint' , focus:true do

    expect(game.get_hint =~ /[1-4]/).to eq(0)
  end

end
