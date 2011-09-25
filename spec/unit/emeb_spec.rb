require 'spec_helper'

describe EMEB do
  
  it 'includes convenience interface methods' do
    EMEB.included_modules.should include(EMEB::ConvenienceInterface)
  end
  
end