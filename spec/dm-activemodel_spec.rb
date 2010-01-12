require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "DataMapper ActiveModel shim" do
  before(:each){ @foo = Foo.new }

  it "not warn about new_record?" do
    @foo.should_not_receive(:warn)
    @foo.new_record?
  end

end
