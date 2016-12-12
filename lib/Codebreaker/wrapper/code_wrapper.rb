require_relative 'base_wrapper'

module Codebreaker
  class CodeWrapper < BaseWrapper
    def check_code(user_code)
      game = getGame
      unless game.valid_input?(user_code)
        return 'Your enter not correct data'
      end
      result = @wrapper.check_code(user_code)
      game.add_result(result)
      result
    end
  end
end
