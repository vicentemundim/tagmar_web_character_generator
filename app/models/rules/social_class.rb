class Rules::SocialClass
  class << self
    def social_class_for(race, dice_value)
      send("social_class_for_#{race}", dice_value)
    end

    def social_class_for_human(dice_value)
      HUMAN_SOCIAL_CLASS_MAPPING[dice_value]
    end

    def social_class_for_halfling(dice_value)
      HALFLING_SOCIAL_CLASS_MAPPING[dice_value]
    end

    def social_class_for_dwarf(dice_value)
      DWARF_SOCIAL_CLASS_MAPPING[dice_value]
    end

    def social_class_for_wood_elf(dice_value)
      ELF_SOCIAL_CLASS_MAPPING[dice_value]
    end

    def social_class_for_golden_elf(dice_value)
      ELF_SOCIAL_CLASS_MAPPING[dice_value]
    end

    def social_class_for_half_elf(dice_value)
      HALF_ELF_SOCIAL_CLASS_MAPPING[dice_value]
    end
  end

  SOCIAL_CLASSES = {
    'ex_slave'          => {:name => "Ex-escravo",          :coper_coins =>  10, :silver_coins =>  4, :gold_coins => 0},
    'ex_serf'           => {:name => "Ex-servo",            :coper_coins =>  15, :silver_coins =>  8, :gold_coins => 0},
    'free'              => {:name => "Livre",               :coper_coins =>  20, :silver_coins => 13, :gold_coins => 0},
    'small_trader'      => {:name => "Pequeno comerciante", :coper_coins =>  30, :silver_coins => 17, :gold_coins => 0},
    'handicraftsman'    => {:name => "Artíficie",           :coper_coins =>  40, :silver_coins => 21, :gold_coins => 1},
    'big_trader'        => {:name => "Grande comerciante",  :coper_coins =>  50, :silver_coins => 35, :gold_coins => 1},
    'low_nobility'      => {:name => "Baixa nobreza",       :coper_coins =>  60, :silver_coins => 40, :gold_coins => 2},
    'high_nobility'     => {:name => "Alta nobreza",        :coper_coins => 100, :silver_coins => 50, :gold_coins => 3},
  }

  HALFLING_SOCIAL_CLASS_MAPPING = {
     2 => 'ex_slave',
     3 => 'free',
     4 => 'free',
     5 => 'free',
     6 => 'free',
     7 => 'free',
     8 => 'free',
     9 => 'free',
    10 => 'small_trader',
    11 => 'small_trader',
    12 => 'small_trader',
    13 => 'small_trader',
    14 => 'handicraftsman',
    15 => 'handicraftsman',
    16 => 'handicraftsman',
    17 => 'big_trader',
    18 => 'low_nobility',
    19 => 'low_nobility',
    20 => 'low_nobility',
  }

  DWARF_SOCIAL_CLASS_MAPPING = {
     2 => 'free',
     3 => 'free',
     4 => 'free',
     5 => 'free',
     6 => 'free',
     7 => 'small_trader',
     8 => 'small_trader',
     9 => 'small_trader',
    10 => 'small_trader',
    11 => 'handicraftsman',
    12 => 'handicraftsman',
    13 => 'handicraftsman',
    14 => 'handicraftsman',
    15 => 'big_trader',
    16 => 'big_trader',
    17 => 'low_nobility',
    18 => 'low_nobility',
    19 => 'low_nobility',
    20 => 'high_nobility',
  }

  WOOD_ELF_SOCIAL_CLASS_MAPPING = {
     2 => 'free',
     3 => 'free',
     4 => 'free',
     5 => 'free',
     6 => 'free',
     7 => 'free',
     8 => 'free',
     9 => 'small_trader',
    10 => 'small_trader',
    11 => 'small_trader',
    12 => 'small_trader',
    13 => 'small_trader',
    14 => 'big_trader',
    15 => 'big_trader',
    16 => 'handicraftsman',
    17 => 'low_nobility',
    18 => 'low_nobility',
    19 => 'low_nobility',
    20 => 'high_nobility',
  }

  GOLDEN_ELF_SOCIAL_CLASS_MAPPING = {
     2 => 'free',
     3 => 'free',
     4 => 'free',
     5 => 'free',
     6 => 'free',
     7 => 'free',
     8 => 'small_trader',
     9 => 'small_trader',
    10 => 'small_trader',
    11 => 'small_trader',
    12 => 'handicraftsman',
    13 => 'big_trader',
    14 => 'big_trader',
    15 => 'low_nobility',
    16 => 'low_nobility',
    17 => 'low_nobility',
    18 => 'low_nobility',
    19 => 'high_nobility',
    20 => 'high_nobility',
  }

  HALF_ELF_SOCIAL_CLASS_MAPPING = {
     2 => 'ex_slave',
     3 => 'free',
     4 => 'free',
     5 => 'free',
     6 => 'free',
     7 => 'free',
     8 => 'free',
     9 => 'small_trader',
    10 => 'small_trader',
    11 => 'small_trader',
    12 => 'small_trader',
    13 => 'handicraftsman',
    14 => 'handicraftsman',
    15 => 'big_trader',
    16 => 'big_trader',
    17 => 'low_nobility',
    18 => 'low_nobility',
    19 => 'low_nobility',
    20 => 'high_nobility',
  }

  HUMAN_SOCIAL_CLASS_MAPPING = {
     2 => 'ex_slave',
     3 => 'ex_slave',
     4 => 'ex_slave',
     5 => 'ex_serf',
     6 => 'ex_serf',
     7 => 'free',
     8 => 'free',
     9 => 'free',
    10 => 'free',
    11 => 'small_trader',
    12 => 'small_trader',
    13 => 'handicraftsman',
    14 => 'handicraftsman',
    15 => 'big_trader',
    16 => 'big_trader',
    17 => 'low_nobility',
    18 => 'low_nobility',
    19 => 'low_nobility',
    20 => 'high_nobility',
  }
end
