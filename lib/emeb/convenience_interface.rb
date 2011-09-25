require 'active_support/concern'

module EMEB
  
  # Provides a conventient interface for accessing EMEB functionality and frees
  # users from managing individual EMEB object references and relationships. It
  # is the preferred interface for interacting with EMEB on a basic level
  module ConvenienceInterface
    extend ActiveSupport::Concern
    
    # Methods defined in this module are accessible on module EMEB as module
    # methods
    module ClassMethods
      
      # On an event which matches the given filters on the given exchange
      # calls the given block with event headers and event data
      def on
      end
      
      # Publish the described event to the given exchange
      def publish
      end
      
    end
    
  end
  
end