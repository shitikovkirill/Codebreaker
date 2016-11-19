module Codebreaker
  class Codemaker
    def make_code
      number = ''
      4.times{ number += (rand(6)+1).to_s }
      return number
    end
  end
end