require_relative '../model/game'

module Codebreaker
  class BaseWrapper
      @wrapper

      def initialize wrapper_or_game
        until ((wrapper_or_game.kind_of? BaseWrapper) || (wrapper_or_game.kind_of? Game))
          raise ArgumentError, 'Object must  kind_of?  BaseWrapper or Game'
        end
        @wrapper =  wrapper_or_game
      end

    def getGame
      if(@wrapper.instance_of? Game)
        return @wrapper
      end
      @wrapper.getGame()
    end

    def check_code(user_code)
      raise 'You must rewrite this method'
    end
  end
end