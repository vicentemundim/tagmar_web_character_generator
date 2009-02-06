require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Profession do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :skill_points_per_level => 1,
      :combat_points_per_level => 1,
      :can_use_magic => false
    }
  end

  it "should create a new instance given valid attributes" do
    Profession.create!(@valid_attributes)
  end
end
