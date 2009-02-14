# == Schema Information
# Schema version: 20090214155938
#
# Table name: acquired_weapon_groups
#
#  id           :integer(4)      not null, primary key
#  character_id :integer(4)
#  weapon_group :string(255)
#  level        :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

class AcquiredWeaponGroup < ActiveRecord::Base
end
