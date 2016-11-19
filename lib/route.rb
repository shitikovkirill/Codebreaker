module Codebreaker
  class Route
    def initialize (view_helper)
      @view_helper = view_helper
    end

    def run (controller_name, action = 'index', options = {})
      view_path = controller_name.sub(/Controller/, '').downcase + '/' + action
      options = @view_helper.rendering(data_from_controller(controller_name, action, options), view_path)

      if !options.nil? && options.has_key?(:action)
        run(controller_name, options[:action],  options)
      end
    end

    def data_from_controller (controller_name, action, options)
      controller_class = Object.const_get(controller_name)
      controller_object = controller_class.new
      action_method = action+'_action'
      raise RouteException, "This action (#{action}) not found" unless controller_object.respond_to? action_method
      controller_object.public_send(action_method, options)
    end
  end
end