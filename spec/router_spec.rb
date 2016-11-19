require 'spec_helper'

describe Codebreaker::Route do
  let(:route) { Codebreaker::Route.new nil}

  it 'check data from controller', :focus do
    expect(route.data_from_controller 'StartController', 'index', {}).to be_nil
  end
end