require_relative 'base_wrapper'

module Codebreaker
  class CodeWrapper < BaseWrapper
    def check_code(user_code)
      game = getGame
      return 'Your enter not correct data' unless game.valid_input?(user_code)
      result = @wrapper.check_code(user_code)
      game.add_result(result)
      result
    end
  end
end
