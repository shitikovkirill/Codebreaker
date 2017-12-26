$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'Codebreaker'

RSpec.configure do |config|
  config.filter_run focus: true
end
