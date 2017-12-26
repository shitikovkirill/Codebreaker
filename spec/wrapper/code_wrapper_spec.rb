require 'spec_helper'

describe Codebreaker::CodeWrapper do
  let(:codewrapper) { Codebreaker::CodeWrapper.new(Codebreaker::Game.new(code: '1234', count_attempt: 6, count_hint: 1)) }

  it 'User input is not correct' do
    expect(codewrapper.check_code('123R')).to eq('Your enter not correct data')
    expect(codewrapper.check_code('')).to eq('Your enter not correct data')
  end

  it 'User input is correct' do
    expect(codewrapper.check_code('1234')).to eq('++++')
  end
end
