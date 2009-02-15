module CharactersHelper
  def displayable_race_for(character)
    character.race.name
  end

  def displayable_profession_for(character)
    character.profession.name
  end

  def displayable_age_for(character)
    (character.age > 1) ? "#{character.age} anos" : "#{character.age} ano"
  end

  def displayable_level_for(character)
    "Estágio #{character.level}"
  end

  def displayable_height_for(character)
    if character.height > 99
      "#{character.height.to_s[0..0]},#{character.height.to_s[1..2]} m"
    else
      "#{character.height} cm"
    end
  end

  def displayable_weight_for(character)
    "#{character.weight} Kg"
  end

  def displayable_social_class_for(character)
    Rules::SocialClass::SOCIAL_CLASSES[character.social_class][:name] unless character.social_class.blank?
  end

  def displayable_god_for(character)
    character.god.blank? ? "Ateu" : "Devoto de #{character.god.titleize}"
  end

  def displayable_attribute_name_for(attribute)
    Rules::Attributes::NAMES[attribute]
  end

  def signed(value)
    (value > 0) ? "+#{value}" : value
  end

  def border_class_for_value_column(column)
    [8, 15, 21].include?(column) ? 'borderRight' : ''
  end
end
