require_relative 'base_wrapper'

module Codebreaker
  class HintWrapper < BaseWrapper
    def check_code(user_code)
      if(user_code=='hint')
        return 'sdfsdfsfsdf'
      end
      @wrapper.check_code(user_code)
    end
  end
end
