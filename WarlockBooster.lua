/assist shadeshade
/script if UnitMana("Player") < 500 then CastSpellByName("Life Tap"); end
/script if not buffed("Demon Armor", "player") then cast("Demon Armor"); end
/script if UnitIsPlayer("target") then CastSpellByName("Death Coil"); end
/script if UnitIsTapped("target") then CastSpellByName("Searing Pain"); end
/script if UnitIsPlayer("target") then CastSpellByName("Searing Pain"); end
/script if UnitIsTapped("target") then CastSpellByName("Searing Pain"); end
/follow shadeshade