require 'spec_helper'

describe Codebreaker::Codemaker do
  let(:codemaker) { Codebreaker::Codemaker.new }
  it 'code heve number and 4 items' do
    expect(0).to eq(/\A[1-6]{4}\Z/ =~ codemaker.make_code.to_s)
  end
end