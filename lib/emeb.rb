%w(version broker virtual_host queue exchange binding convenience_interface).each do |emeb_library|
  require "emeb/#{emeb_library}"
end

# The EventMachine EventBus (herein, EMEB) provides a standard
# framework for the creation of evented message oriented applications
# utilizing the EventMachine framework
module EMEB
  include EMEB::ConvenienceInterface
end