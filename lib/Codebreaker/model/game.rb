module Codebreaker
  class Game
    attr_accessor :code
    attr_reader :progress, :player_answer

    def initialize(settings)
      @progress = []
      @player_answer = []
      @count_attempt = settings[:count_attempt]
      @count_hint = settings[:count_hint]
      @code = settings[:code]
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

    def get_hint
      if(@count_hint > 0)
        @count_hint -= 1
        p index = rand(4)
        @code[index]
      else
        'You can not have hint'
      end
    end

    def check_code(user_code)
      code = @code
      regexp = Regexp.new('([' + code + '])')
      number_of_coincidences = user_code.scan(regexp).length
      char_position = 0
      number_of_plus = 0
      user_code.each_char do |char|
        number_of_plus += 1 if code[char_position] == char
        char_position += 1
      end
      number_of_minus = number_of_coincidences - number_of_plus
      '+' * number_of_plus + '-' * number_of_minus
    end

    def valid_input?(numbers)
      case numbers
      when /^[1-6]{4}$/
        return true
      end
      false
    end

    def to_s
      "You guessed this code:  #{@code}. You results: #{@progress.join(' ')}. You have #{@count_attempt} attempts"
    end
  end
end
