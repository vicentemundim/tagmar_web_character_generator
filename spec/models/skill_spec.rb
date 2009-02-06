require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Skill do
  before(:each) do
    @skill = Skill.new
  end

  it "should be valid" do
    @skill.should be_valid
  end
end
