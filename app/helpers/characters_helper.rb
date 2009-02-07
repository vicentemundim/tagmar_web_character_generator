module CharactersHelper
  def displayable_age_for(character)
    (character.age > 1) ? "#{character.age} anos" : "#{character.age} ano"
  end

  def displayable_level_for(character)
    "Estágio #{character.level}"
  end
end
