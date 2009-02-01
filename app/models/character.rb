# == Schema Information
# Schema version: 20090201163037
#
# Table name: characters
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  biography  :text
#  age        :integer(4)
#  level      :integer(4)
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Character < ActiveRecord::Base
  belongs_to :user
end
