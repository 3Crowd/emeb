#!/usr/bin/env rake

require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new :spec

task :test => :spec
task :doc => :'doc:yard'
task :default => [:spec, :doc]

namespace :doc do
  require 'yard'
  YARD::Rake::YardocTask.new do |task|
    task.files = ['lib/**/*.rb', '-', 'LICENSE.txt', 'README.md']
    task.options = [
      '--readme', 'README.md',
      '--protected',
      '--output-dir', 'doc/yard',
      '--markup', 'markdown'
    ]
  end
end
