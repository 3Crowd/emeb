module EMEB
  
  # An Exchange recieves messages from publishers, and the type of an exchange
  # determines several aspects of how the RoutingEngine handles messages from
  # the exchange instance
  class Exchange
    
    attr_reader :name
    attr_reader :virtual_host
    attr_reader :bindings
    
    # @param name [String] The name of the exchange
    # @param virtual_host [VirtualHost] The VirtualHost to which this exchange belongs
    def initialize name, virtual_host
      @name = name
      @virtual_host = virtual_host
      @bindings = []
    end
    
    # Registers a valid binding target with the exchange
    # @param binding_to_declare [Binding, #exchange, #queue] The binding to declare for exchange targeting
    def declare_binding binding_to_declare
      ensure_binding_exchange_matches_self binding_to_declare
      @bindings << binding_to_declare
    end
    
    def ensure_binding_exchange_matches_self binding_to_declare
      raise BindingExchangeNotSelfError if binding_to_declare.exchange != self
    end
    
    # All queues connected through this Exchange via declared Bindings
    # @return [Queue] The set of queues which can receive messages from this Exchange
    def subscribed_queues
      @bindings.map{|binding| binding.queue}
    end
    
    # Raised when declaring a binding whose exchange does not match the Exchange to which
    # the binding is being declared
    class BindingExchangeNotSelfError < StandardError
    end
    
  end
  
end