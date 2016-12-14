module Codebreaker
  module SaveLoadData
    module ClassMethods
      def load_data(data_provider)
        data_provider.load_data
      end
    end

    module InstanceMethods
      def save_data(data_provider)
        data_provider.save_data(self)
      end
    end

    def self.included(base)
      base.extend ClassMethods
      base.class_eval do
        include InstanceMethods
      end
    end
  end
end
