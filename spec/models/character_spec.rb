require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Character do
  before(:each) do
    @character = Character.new
  end

  it "should be valid" do
    @character.should be_valid
  end
end
