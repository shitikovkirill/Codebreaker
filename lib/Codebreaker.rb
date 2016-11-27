require 'yaml'
require_relative 'Codebreaker/version'
require_relative 'route'
require_relative 'view_helper'
require_relative 'exception/route_exception'
require_relative 'exception/view_not_found_exception'
require_relative 'controller/base_controller'
require_relative 'controller/start_controller'
require_relative 'model/data/data'
require_relative 'model/module/save_load_data'
require_relative 'model/codemaker'

module Codebreaker
  class Application
    def run
      view    = Codebreaker::ViewHelper.new
      router  = Codebreaker::Route.new(view)

      while (input = gets.strip) != 'stop'
        begin
          raise RouteException, 'You introduced illegal characters' until (input =~ %r{^[a-zA-Z]+$})
          router.run(getController input)
        rescue RouteException => e
          puts e.message
        rescue Exception => e
          puts e.message
          puts e.backtrace.inspect
        end
      end
    end

    def getController input
      controller_file = __dir__+'/controller/'+input+'_controller.rb'
      raise RouteException, "Route (#{input}) not found" until(File.file?(controller_file))
      input.capitalize+'Controller'
    end
  end
end

#Codebreaker::Application.new().run