require 'spec_helper'

describe Codebreaker do
  let(:codebreaker) { Codebreaker::Application.new }

  it 'has a version number' do
    expect(Codebreaker::VERSION).not_to be nil
  end

  it 'check return value method getController' do
    controller = codebreaker.getController 'start'
    expect(controller).to eq('StartController')
  end



end
