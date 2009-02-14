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
  has_and_belongs_to_many :belongings
  has_and_belongs_to_many :weapons, :join_table => 'belongings_characters', :association_foreign_key => 'belonging_id'
  has_and_belongs_to_many :armors, :join_table => 'belongings_characters', :association_foreign_key => 'belonging_id'
  has_and_belongs_to_many :elms, :join_table => 'belongings_characters', :association_foreign_key => 'belonging_id'
  has_and_belongs_to_many :shields, :join_table => 'belongings_characters', :association_foreign_key => 'belonging_id'
  has_and_belongs_to_many :other_belongings, :join_table => 'belongings_characters', :association_foreign_key => 'belonging_id'
  has_many :acquired_weapon_groups

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

  def physical_resistance
    self.level + physical_adjustment
  end

  def magical_resistance
    self.level + aura_adjustment
  end

  def next_level_experience
    Rules::Experience::next_level_points_for(self.level)
  end

  def acquired_weapon_group_level_for(weapon_group)
    acquired_weapon_group = self.acquired_weapon_groups.find_by_weapon_group(weapon_group)
    acquired_weapon_group.nil? ? 0 : acquired_weapon_group.level
  end

  def total_adjusment_for(weapon)
    acquired_weapon_group_level_for(weapon.weapon_group) + self.agility_adjustment
  end

  def damage_for(weapon, amount = 100)
    (weapon.base_damage * amount/100).to_i + self.strength_adjustment
  end
end
