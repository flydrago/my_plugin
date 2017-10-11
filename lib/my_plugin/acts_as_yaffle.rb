module MyPlugin
  module ActsAsYaffle
    extend ActiveSupport::Concern

    included do |subclass|
      subclass.send(:include, InstanceMethods)
    end

    module ClassMethods
      def acts_as_yaffle(options = {})
        cattr_accessor :yaffle_text_field

        self.yaffle_text_field = (options[:yaffle_text_field] || :last_squawk).to_s
      end
    end

    module InstanceMethods
      def squawk(string)
        write_attribute(self.class.yaffle_text_field, string.to_squawk)
      end
    end
  end
end
