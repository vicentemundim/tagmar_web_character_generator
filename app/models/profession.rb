# == Schema Information
# Schema version: 20090206212949
#
# Table name: professions
#
#  id                      :integer(4)      not null, primary key
#  name                    :string(255)
#  description             :text
#  skill_points_per_level  :integer(4)
#  combat_points_per_level :integer(4)
#  can_use_magic           :boolean(1)
#  created_at              :datetime
#  updated_at              :datetime
#

class Profession < ActiveRecord::Base
end
