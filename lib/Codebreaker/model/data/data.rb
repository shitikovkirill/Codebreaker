module Codebreaker
  class File
    def initialize(file_name = 'data_file_yaml.yaml')
      @file_name = file_name
    end

    def load_data
      return unless ::File.exist?(@file_name)
      ::File.exist?(@file_name)
    end

    def save_data(object)
      ::File.open(@file_name, 'w+') do |file|
        file.puts object.to_yaml
      end
    end
  end
end
