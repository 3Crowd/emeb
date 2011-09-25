# -*- encoding: utf-8 -*-
require File.expand_path('./lib/emeb/version')

Gem::Specification.new do |gem|

  gem.name = 'emeb'
  gem.version = EMEB::Version.to_standard_version_s

  gem.authors = ["Justin Lynn", "3Crowd Technologies, Inc. (Sponsor)"]
  gem.email = ["eng@3crowd.com"]

  gem.summary = %q{EventMachine EventBus}
  gem.description = %q{The EventMachine EventBus (herein, EMEB) provides a standard framework for the creation of evented message oriented applications utilizing the EventMachine framework.}

  gem.homepage = 'https://github.com/3crowd/emeb'

  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename f }
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split "\n"
  gem.files = `git ls-files`.split "\n"

  gem.require_paths = ['lib']

  gem.required_rubygems_version = Gem::Requirement.new '>= 1.3.6'

  gem.add_development_dependency 'rspec', '~> 2.6'
  gem.add_development_dependency 'yard', '~> 0.7'
  gem.add_development_dependency 'rdiscount', '~> 1.6.8'
  
  gem.add_dependency 'eventmachine', '~> 0.12.10'
  gem.add_dependency 'activesupport', '~> 3.1.0'
end
