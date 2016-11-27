require 'yaml'
require_relative 'Codebreaker/version'
require_relative 'model/data/data'
require_relative 'model/module/save_load_data'
require_relative 'model/codemaker'
require_relative 'model/result'
require_relative 'model/player'

module Codebreaker
  class Application
    def run
      codemaker = Codemaker.new
      code = codemaker.make_code;

      result = Result.new code

      while (result.has_attempt?)
        puts "You have #{result.attempt} tries to guess the code:"

        player_code = gets.strip

        unless codemaker.valid_input?(player_code)
          puts 'Your enter not correct data'
          next
        end

        effect = codemaker.check_code(result.code, player_code)
        puts 'Your result '+ effect

        result.add_result(effect)
      end

      puts result

      puts 'Enter your name: '
      name = gets.strip
      player = Player.new(name, result)

      yaml_file_provider = Data::File::YAML.new
      player.save_data(yaml_file_provider);

    end
  end
end

Codebreaker::Application.new().run