require 'spec_helper'

describe EMEB::Queue do
  
  before :each do
    @queue_name = 'test_queue'
    @queue = EMEB::Queue.new @queue_name
  end
  
  it 'knows the name passed via initialize' do
    @queue.name.should eql(@queue_name)
  end
  
end