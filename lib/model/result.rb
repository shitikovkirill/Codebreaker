module Codebreaker
  class Result
    attr_reader :count_attempt, :progress, :code

    def initialize code
      @count_attempt = 6
      @progress = []
      @code = code
    end

    def attempt
      @count_attempt - @progress.length
    end

    def has_attempt?
      return false if attempt <= 0
      true
    end

    def add_result(result)
      @progress.push(result)
    end

    def to_s
      "You guessed this code:  #{@code}. You results: #{@progress.join(" ")}. You have #{@count_attempt} attempts"
    end
  end
end