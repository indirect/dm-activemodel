require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "dm-activemodel"
    gem.summary = %Q{Make sure DataMapper acts like an ActiveModel}
    gem.description = %Q{Make sure DataMapper acts like an ActiveModel}
    gem.email = "andre@arko.net"
    gem.homepage = "http://github.com/indirect/dm-activemodel"
    gem.authors = ["Andre Arko"]
    gem.add_dependency "dm-core", ">= 0.10"
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.version = "0.1"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies
task :default => :spec
