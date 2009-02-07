# == Schema Information
# Schema version: 20090207212756
#
# Table name: characters
#
#  id                        :integer(4)      not null, primary key
#  name                      :string(255)
#  biography                 :text
#  age                       :integer(4)
#  level                     :integer(4)
#  user_id                   :integer(4)
#  created_at                :datetime
#  updated_at                :datetime
#  race_id                   :integer(4)
#  profession                :integer(4)
#  god                       :string(255)
#  social_class              :string(255)
#  intelect                  :integer(4)
#  aura                      :integer(4)
#  charisma                  :integer(4)
#  strengh                   :integer(4)
#  physical                  :integer(4)
#  agility                   :integer(4)
#  current_experience        :integer(4)
#  physical_energy           :integer(4)
#  heroic_energy             :integer(4)
#  combat_accumulated_points :integer(4)
#  magic_accumulated_points  :integer(4)
#  skill_accumulated_points  :integer(4)
#  focus                     :string(255)
#  current_bronze_coins      :integer(4)
#  current_silver_coins      :integer(4)
#  current_gold_coins        :integer(4)
#

class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
  belongs_to :profession

  def displayable_social_class
    Rules::SocialClass.SOCIAL_CLASSES[self.social_class][:name] unless self.social_class.blank?
  end

  def displayable_god
    self.god.titleize unless self.god.blank?
  end
end
