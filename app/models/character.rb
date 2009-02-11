# == Schema Information
# Schema version: 20090211231638
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
#  profession_id             :integer(4)
#  god                       :string(255)
#  social_class              :string(255)
#  intelect                  :integer(4)
#  aura                      :integer(4)
#  charisma                  :integer(4)
#  strength                  :integer(4)
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
#  height                    :integer(4)
#  weight                    :integer(4)
#  current_heroic_energy     :integer(4)
#

class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
  belongs_to :profession

  %w(intelect aura charisma strength physical agility).each do |attribute|
    class_eval <<-class_eval
      def #{attribute}_modifier
        racial_modifier_for(:#{attribute})
      end

      def final_value_for_#{attribute}
        final_value_for(:#{attribute})
      end

      def #{attribute}_adjustment
        adjustment_for(:#{attribute})
      end
    class_eval
  end

  def racial_modifier_for(attribute)
    self.race.send("#{attribute}_modifier")
  end

  def final_value_for(attribute)
    send(attribute) + racial_modifier_for(attribute)
  end

  def adjustment_for(attribute)
    Rules::AttributeAdjustment.adjustment_for(final_value_for(attribute))
  end

  def calculated_physical_energy_with_armor
    calculated_physical_energy + armor_absorption
  end

  def calculated_physical_energy
    Rules::PhysicalEnergy.physical_energy_for(self.weight, self.strength, self.physical)
  end

  def armor_absorption
    # TODO: implement this
    0
  end
end
