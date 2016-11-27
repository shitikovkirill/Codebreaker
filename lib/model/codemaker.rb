module Codebreaker
  class Codemaker
    def make_code
      number = ''
      4.times{ number += (rand(6)+1).to_s }
      number
    end

    def check_code(code, user_code)
      regexp = Regexp.new('(['+code+'])')
      number_of_coincidences = user_code.scan(regexp).length
      char_position = 0
      number_of_plus = 0
      user_code.each_char do |char|
        number_of_plus +=1 if code[char_position] == char
        char_position +=1
      end
      number_of_minus = number_of_coincidences - number_of_plus
      '+' * number_of_plus + '-' * number_of_minus
    end

    def valid_input? numbers
      case numbers
        when /^[1-6]{4}$/
          return true
      end
      false
    end
  end
end