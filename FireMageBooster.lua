/assist shadeshade
/script if UnitMana("Player") < 5500 then use("Robe of the Archmage"); end
/script if UnitMana("Player") < 395 then CastSpellByName("Evocation"); end
/script if ( not PlayerFrame.inCombat ) then if not buffed("Mage Armor", "Player") then CastSpellByName("Mage Armor"); end end
/script if ( not PlayerFrame.inCombat ) then if not buffed("Arcane Intellect", "Player") then ClearTarget(); CastSpellByName("Arcane Intellect") SpellTargetUnit("Player"); end end
/script if UnitIsPlayer("target") then CastSpellByName("Fire Blast"); end
/script if UnitIsPlayer("target") then CastSpellByName("Scorch"); end
/script if UnitIsTapped("target") then CastSpellByName("Fire Blast"); end
/script if UnitIsTapped("target") then CastSpellByName("Scorch"); end
/script if not buffed("Combustion", "Player") then CastSpellByName("Combustion"); end
/follow shadeshade