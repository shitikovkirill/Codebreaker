require 'spec_helper'

describe Codebreaker::Codemaker do
  let(:codemaker) { Codebreaker::Codemaker.new }

  it 'Code have number and 4 items' do
    expect(/\A[1-6]{4}\Z/ =~ codemaker.make_code).to eq(0)
  end
end
