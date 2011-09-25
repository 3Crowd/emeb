module EMEB
  
  # A binding represents a message route from an exchange to a queue
  class Binding
    
    attr_reader :exchange
    attr_reader :queue
    attr_reader :conditions
    
    def initialize exchange, queue, conditions
      @exchange = exchange
      @queue = queue
      @conditions = conditions
      @enabled = true
    end
    
    # Is this binding active? Active bindings cause messages to be selected for
    # delivery to their respective queues. Deactivated bindings will be ignored.
    def enabled?
      @enabled
    end
    
    def enable!
      @enabled = true
    end
    
    def disable!
      @enabled = false
    end
    
  end
  
end