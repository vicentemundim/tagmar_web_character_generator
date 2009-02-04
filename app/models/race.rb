# == Schema Information
# Schema version: 20090204223339
#
# Table name: races
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  description       :text
#  intelect_modifier :integer(4)
#  aura_modifier     :integer(4)
#  charisma_modifier :integer(4)
#  strengh_modifier  :integer(4)
#  physical_modifier :integer(4)
#  agility_modifier  :integer(4)
#  created_at        :datetime
#  updated_at        :datetime
#

class Race < ActiveRecord::Base
end
