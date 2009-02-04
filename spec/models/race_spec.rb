require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Race do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :intelect_modifier => 1,
      :aura_modifier => 1,
      :charisma_modifier => 1,
      :strengh_modifier => 1,
      :physical_modifier => 1,
      :agility_modifier => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Race.create!(@valid_attributes)
  end
end
