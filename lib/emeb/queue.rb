module EMEB
  
  # A Queue is responsible for holding and distributing messages to interested
  # subscribers
  class Queue
    
    attr_reader :name
    
    def initialize name
      @name = name
    end
    
  end
  
end