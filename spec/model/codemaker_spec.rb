require 'spec_helper'

describe Codebreaker::Codemaker do
  let(:codemaker) { Codebreaker::Codemaker.new }

  it 'Code heve number and 4 items' do
    expect(0).to eq(/\A[1-6]{4}\Z/ =~ codemaker.make_code.to_s)
  end

  it 'Codes are not equal', :focus do
    expect(codemaker.check_code('1234', '6565')).to eq('')
  end

  it 'Codes are equal', :focus do
    expect(codemaker.check_code('3421', '2634')).to eq('---')
    expect(codemaker.check_code('1121', '1121')).to eq('++++')
    expect(codemaker.check_code('1123', '1124')).to eq('+++')
    expect(codemaker.check_code('4121', '1124')).to eq('++--')
  end
end