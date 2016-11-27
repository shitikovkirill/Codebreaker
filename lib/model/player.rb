module Codebreaker
  class Player
    attr_reader :name, :result

    include SaveLoadData

    def initialize(name, result)
      @name = name
      @result = result
    end
  end
end