require 'spec_helper'

describe EMEB::Binding do
  
  before :each do
    @exchange = double 'Exchange'
    @queue = double 'Queue'
    @conditions = Hash.new
    @binding = EMEB::Binding.new @exchange, @queue, @conditions
  end
  
  it 'knows about the exchange passed to initialize' do
    @binding.exchange.should eql(@exchange)
  end
  
  it 'knows about the queue passed to initialize' do
    @binding.queue.should eql(@queue)
  end
  
  it 'by default, has no conditions' do
    @binding.conditions.should be_empty
  end
  
  it 'by default, is enabled' do
    @binding.should be_enabled
  end
  
  it 'should be disabled by disable!' do
    @binding.disable!
    @binding.should_not be_enabled
  end
  
  it 'should be reenabled by enable!' do
    @binding.disable!
    @binding.enable!
    @binding.should be_enabled
  end
  
end