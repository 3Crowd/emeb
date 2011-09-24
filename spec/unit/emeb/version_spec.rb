require 'spec_helper'

describe EMEB::Version do
  
  it 'has a MAJOR version number' do
    EMEB::Version.const_defined?(:MAJOR).should be_true
  end
  
  it 'has a MINOR version number' do
    EMEB::Version.const_defined?(:MINOR).should be_true
  end
  
  it 'has a PATCH version number' do
    EMEB::Version.const_defined?(:PATCH).should be_true
  end
  
  it 'converts MAJOR, MINOR, and PATCH constants into a standard version string' do
    EMEB::Version.to_standard_version_s.should eql([EMEB::Version::MAJOR, EMEB::Version::MINOR, EMEB::Version::PATCH].join('.'))
  end
  
end