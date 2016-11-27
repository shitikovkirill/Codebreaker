class StartController < BaseController
    def index_action (options)
      codemaker = Codebreaker::Codemaker.new
      code = codemaker.make_code;
      { code: code }
    end

    def checkcode_action (options)
      case options[:number]
        when /^[1-6]{4}$/

          return { success: 'Success' }
        else
          return { error: 'Incorrect input' }
      end
    end
end