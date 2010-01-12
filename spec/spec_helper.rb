$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

begin
  require 'rubygems'
rescue LoadError
end

require 'dm-activemodel'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  class Foo
    include DataMapper::Resource
    property :id, Serial
  end
end
