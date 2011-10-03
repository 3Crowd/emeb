require 'eventmachine'
require 'emeb'

EventMachine.run do
  EMEB.on :topic => 'usd.*' do |tick|
    puts "usd stock: #{tick.routing_key}, price: #{tick.data}"
  end

  EMEB.on :topic => 'usd.rhat' do |tick|
    puts "RedHat stock: #{tick.routing_key}, price: #{tick.data}"
  end

  EM.add_periodic_timer(1) do
    EMEB.publish :topic => 'usd.rhat', :data => rand(10000)/100.to_f
    EMEB.publish :topic => 'usd.ibm', :data => rand(10000)/100.to_f
  end
end
