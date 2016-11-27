require 'spec_helper'

describe Codebreaker::Codemaker do
  let(:codemaker) { Codebreaker::Codemaker.new }

  it 'User input is valid' do
    expect( codemaker.valid_input?('1234') ).to eq(true)
    expect( codemaker.valid_input?('123R') ).to eq(false)
    expect( codemaker.valid_input?('') ).to     eq(false)
  end

  it 'Code have number and 4 items' do
    expect(/\A[1-6]{4}\Z/ =~ codemaker.make_code).to eq(0)
  end

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