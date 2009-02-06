class Rules::WeaponGroups
  class << self
    def cost_for(weapon_group)
      COSTS[weapon_group]
    end

    def description_for(weapon_group)
      DESCRIPTIONS[weapon_group]
    end
  end

  COSTS = {
    'Cl'  => 1,
    'El'  => 1,
    'CmM' => 2,
    'CmE' => 2,
    'Em'  => 2,
    'PmL' => 2,
    'PmA' => 2,
    'Cp'  => 3,
    'Ep'  => 3,
    'Pp'  => 3,
  }

  DESCRIPTIONS = {
    'Cl'  => 'Corte Leve',
    'El'  => 'Esmagamento Level',
    'CmM' => 'Corte Médio (machados)',
    'CmE' => 'Corte Médio (espadas)',
    'Em'  => 'Esmagamento Médio',
    'PmL' => 'Penetração Média (lanças)',
    'PmA' => 'Penetração Média (arcos)',
    'Cp'  => 'Corte Pesado',
    'Ep'  => 'Esmagamento Pesado',
    'Pp'  => 'Penetração Pesada',
  }
end
