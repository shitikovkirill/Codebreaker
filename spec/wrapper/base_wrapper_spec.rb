require 'spec_helper'

describe Codebreaker::BaseWrapper do

  it 'should raise exception' do
    expect(Codebreaker::BaseWrapper.new(Object.new)).to raise_error
    wrapper = Codebreaker::BaseWrapper.new(Codebreaker::Game.new(''))
    expect(wrapper.check_code('3333'))
  end



  it 'should get game (1 wrapper)'  do
    wrapper = Codebreaker::BaseWrapper.new(Codebreaker::Game.new)
    game = wrapper.getGame

    expect(game.instance_of? Codebreaker::Game).to be_truthy
  end

  it 'should get game (2 wrapper)' do

    wrapper = Codebreaker::HelpWrapper.new(Codebreaker::HintWrapper.new(Codebreaker::Game.new ))
    game = wrapper.getGame

    expect(game.instance_of? Codebreaker::Game).to be_truthy
  end
end