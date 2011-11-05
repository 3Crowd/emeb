require 'spec_helper'

describe EMEB::Exchange do
  
  before :each do
    @name = 'test_exchange'
    @virtual_host = double('VirtualHost')
    @exchange = EMEB::Exchange.new(@name, @virtual_host)
  end
  
  it 'has a name, and it knows about it from the initializer' do
    @exchange.name.should eql(@name)
  end
  
  it 'belongs to a VirtualHost, and it knows about it from the initializer' do
    @exchange.virtual_host.should eql(@virtual_host)
  end
  
  context 'when declaring a binding' do
    
    before :each do
      @queue = double('Queue')
      @binding = double('Binding', :exchange => @exchange, :queue => @queue)
    end
    
    it 'adds the declared binding to the list of known bindings' do
      @exchange.declare_binding @binding
      @exchange.bindings.should include(@binding)
    end
    
    it 'knows about queues which might receive messages through declared bindings' do
      @exchange.declare_binding @binding
      @exchange.subscribed_queues.should include(@queue)
    end
    
    context 'with an exchange that does not match self' do
      
      before :each do
        @binding = double('Binding with wrong Exchange', :exchange => double('Wrong Exchange'), :queue => @queue)
      end
      
      it 'raises BindingExchangeNotSelfError' do
        expect{ @exchange.declare_binding @binding }.to raise_error(EMEB::Exchange::BindingExchangeNotSelfError)
      end
      
    end
    
  end
end