module CharactersHelper
  def displayable_age_for(character)
    (character.age > 1) ? "#{character.age} anos" : "#{character.age} ano"
  end

  def displayable_level_for(character)
    "Estágio #{character.level}"
  end

  def displayable_social_class_for(character)
    Rules::SocialClass::SOCIAL_CLASSES[character.social_class][:name] unless character.social_class.blank?
  end

  def displayable_god_for(character)
    character.god.titleize unless character.god.blank?
  end

  def signed(value)
    (value > 0) ? "+#{value}" : value
  end
end
