require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AcquiredWeaponGroup do
  before(:each) do
    @valid_attributes = {
      :character_id => 1,
      :weapon_group => "value for weapon_group",
      :level => 1
    }
  end

  it "should create a new instance given valid attributes" do
    AcquiredWeaponGroup.create!(@valid_attributes)
  end
end
