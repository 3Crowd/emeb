EventMachine EventBus (EMEB)
============================

The EventMachine EventBus (herein, EMEB) provides a standard
framework for the creation of evented message oriented applications
utilizing the EventMachine framework. If you are familiar with the
AMQP messaging system model, then EMEB will be very familiar to you. Note
that while it borrows heavily from the AMQP object model it does not always
adhere to the AMQP standard, so please do read the documentation even if you
are very familiar with AMQP.

Installation
------------

* Installation from RubyGems

	gem install emeb

* Installation using bundler (Gemfile)

	gem 'emeb'

Quick Start
-----------

A simple example follows (contained in a file called ~/example.rb):

	EM.start do

	  # EMEB::on is a shortcut method which binds a new anonymous queue the 
	  # application default vhost on the application default topic exchange.
	  EMEB.on :topic => 'amazing.stuff.*' do |event|
	    puts "A most enjoyable experience: ' + event.data
	  end
	
	  with_data = 'event occurance'
	  EMEB.publish :topic => 'amazing.stuff.here', :data => with_data
	
	  with_data += ': sequalea'
	  EMEB.publish :topic => 'even.more.amazing.stuff.here', :data => with_data
	
	  EM.stop
	end

Will yield the following output:

	$> ruby example.rb
	A most enjoyable experience: event occurance
	$>

Travis CI
---------
[![Travis-CI](https://secure.travis-ci.org/3Crowd/emeb.png?branch=develop)](http://travis-ci.org/3Crowd/emeb)

