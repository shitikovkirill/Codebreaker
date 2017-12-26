require 'yaml'
require_relative 'Codebreaker/version'
require_relative 'Codebreaker/model/data/data'
require_relative 'Codebreaker/model/module/save_load_data'
require_relative 'Codebreaker/model/codemaker'
require_relative 'Codebreaker/model/game'
require_relative 'Codebreaker/model/player'
require_relative 'Codebreaker/wrapper/base_wrapper'
require_relative 'Codebreaker/wrapper/hint_wrapper'
require_relative 'Codebreaker/wrapper/help_wrapper'
require_relative 'Codebreaker/wrapper/code_wrapper'

module Codebreaker
  class Application
    def run
      codemaker = Codemaker.new

      game = Game.new ({ code: codemaker.make_code, count_attempt: 6, count_hint: 1 })

      while game.has_attempt?
        puts "You have #{game.attempt} tries to guess the code:"

        player_code = gets.strip

        result = HelpWrapper.new(HintWrapper.new(CodeWrapper.new(game))).check_code(player_code)

        puts 'Result: ' + result
      end

      puts game

      puts 'Enter your name: '
      name = gets.strip
      player = Player.new(name, game)

      yaml_file_provider = File.new
      player.save_data(yaml_file_provider)
    end
  end
end

# Codebreaker::Application.new().run
