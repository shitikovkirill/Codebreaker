require_relative '../model/game'

module Codebreaker
  class BaseWrapper
    @wrapper

    def initialize(wrapper_or_game)
      until (wrapper_or_game.is_a? BaseWrapper) || (wrapper_or_game.is_a? Game)
        raise ArgumentError, 'Object must  kind_of?  BaseWrapper or Game'
      end
      @wrapper = wrapper_or_game
    end

    def getGame
      return @wrapper if @wrapper.instance_of? Game
      @wrapper.getGame
    end

    def check_code(_user_code)
      raise 'You must rewrite this method'
    end
  end
end
