require 'spec_helper'

describe StartController do
  let(:start_controller) { StartController.new }

  it 'Get code' do
    data_from_controller = start_controller.index_action({})
    res = data_from_controller[:code] =~ /\A[1-6]{4}\Z/
    expect(res).not_to be nil
  end

  it 'Du not correct number' do
    expect(start_controller.checkcode_action({ number: '1237' })).to eq({ error: 'Incorrect input' })
    expect(start_controller.checkcode_action({ number: '123' })).to  eq({ error: 'Incorrect input' })
    expect(start_controller.checkcode_action({ number: '123R' })).to eq({ error: 'Incorrect input' })
  end

  it 'Correct number' do

  end
end