require 'dm-core'

module DataMapper
  module Resource
    def new_record?(*args); new?(*args); end
  end # Resource
end # DataMapper
