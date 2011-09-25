require 'spec_helper'

describe EMEB::ConvenienceInterface do
  
  it 'is extended by the ActiveSupport Concern module' do
    subject.singleton_class.included_modules.should include(ActiveSupport::Concern)
  end
  
end

describe EMEB::ConvenienceInterface::ClassMethods do
  
  it 'defines the on method' do
    subject.instance_methods.should include(:on)
  end
  
  it 'defines the publish method' do
    subject.instance_methods.should include(:publish)
  end
  
  describe 'defining a consumer' do
  end
  
  describe 'publishing a message' do
  end
  
end