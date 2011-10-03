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
      # @param opts [Hash] Filter options. These options determine under which circumstances
      #   the block given will be yielded
      # @option opts [optional, Exchange] :exchange This option indicates to which exchange we
      #   expect the event to which we are responding to be published
      # @option opts [String] :topic (nil) if the given exchange supports the notion of a routing key, then this
      #   option restricts events activating the given block to those events whose routing key matches the
      #   provided topic. Otherwise, this option does nothing
      # @yield [message] The block which will be called when an event matching the given restrictions is received on the
      #   given exchange.
      # @yieldparam [Message] message The message which matched the given restrictions
      def on opts = {}
      end
      
      # Publish the described event to the given exchange
      # @param opts [Hash] Event options. The options set properties on the published message, as well as determining which
      #   exchange to which the message will be published
      # @option opts [Exchange] :exchange (EMEB.default_exchange) This option indicates to which exchange we
      #   publish the message
      # @option opts [String] :topic (nil) 
      # @option opts [Object] :data (nil) Data to be included with the message
      def publish opts = {}
      end
      
      # The default exchange to which messages are published, and from which messages are received via convenience
      # methods if no alternate exchange is given
      # @param on_virtual_host [VirtualHost] The virtual host to which the default exchange should be scoped
      # @return [TopicExchange] The default exchange
      def default_exchange on_virtual_host = default_virtual_host
      end
      private :default_exchange
      
      # The default virtual host which scopes exchanges
      # @return [VirtualHost] The default virtual host
      def default_virtual_host
      end
      private :default_virtual_host
      
    end
    
  end
  
end