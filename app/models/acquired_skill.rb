# == Schema Information
# Schema version: 20090215164103
#
# Table name: acquired_skills
#
#  id           :integer(4)      not null, primary key
#  character_id :integer(4)
#  skill_id     :integer(4)
#  level        :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

class AcquiredSkill < ActiveRecord::Base
  belongs_to :character
  belongs_to :skill
end
