require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AcquiredSkill do
  before(:each) do
    @valid_attributes = {
      :character_id => 1,
      :skill_id => 1,
      :level => 1
    }
  end

  it "should create a new instance given valid attributes" do
    AcquiredSkill.create!(@valid_attributes)
  end
end
