module Codebreaker
  class ViewHelper
    def rendering (data_from_controller, view_path)
      $return_vars = nil
      $view_vars   = data_from_controller
      view_path = 'view/' + view_path + '.rb'
      full_view_path = File.expand_path(view_path, __dir__)
      raise ViewNotFoundException, 'View not found' until File.exist?(full_view_path)
      load (full_view_path)
      $return_vars
    end
  end
end