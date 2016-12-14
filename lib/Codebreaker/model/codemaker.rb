module Codebreaker
  class Codemaker
    def make_code
      number = ''
      4.times { number += (rand(6) + 1).to_s }
      number
    end
  end
end
