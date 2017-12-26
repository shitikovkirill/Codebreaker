require_relative 'base_wrapper'

module Codebreaker
  class HintWrapper < BaseWrapper
    def check_code(user_code)
      return 'Hint: '+game.get_hint if user_code == 'hint'
      @wrapper.check_code(user_code)
    end
  end
end
