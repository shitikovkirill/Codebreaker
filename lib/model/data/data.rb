module Codebreaker
  class Data
    class File
      class YAML

        def initialize (file_name = 'data_file_yaml.yaml')
          @file_name = file_name
        end

        def load_data
          if (::File.exist?(@file_name))
            ::YAML.load_file(@file_name)
          else
            nil
          end
        end

        def save_data (object)
          ::File.open(@file_name, "w+") do |file|
            file.puts object.to_yaml
          end
        end

      end
    end
  end
end
