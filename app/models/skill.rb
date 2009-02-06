# == Schema Information
# Schema version: 20090206220550
#
# Table name: skills
#
#  id             :integer(4)      not null, primary key
#  identifier     :string(255)
#  name           :string(255)
#  description    :text
#  base_attribute :string(255)
#  cost           :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class Skill < ActiveRecord::Base
end
