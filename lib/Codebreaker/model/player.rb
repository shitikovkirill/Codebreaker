module Codebreaker
  class Player
    attr_reader :name, :game

    include SaveLoadData

    def initialize(name, game)
      @name = name
      @game = game
    end
  end
end
