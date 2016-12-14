require 'spec_helper'

describe Codebreaker::Game do
  let(:game) { Codebreaker::Game.new }

  it 'Codes are not equal' do
    expect(codemaker.check_code('1234', '6565')).to eq('')
  end

  it 'Codes are equal' do
    expect(codemaker.check_code('3421', '2634')).to eq('---')
    expect(codemaker.check_code('1121', '1121')).to eq('++++')
    expect(codemaker.check_code('1123', '1124')).to eq('+++')
    expect(codemaker.check_code('4121', '1124')).to eq('++--')
  end
end
