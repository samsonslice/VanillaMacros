/target shadeshade
/script if not buffed("Thorns", 'target') then CastSpellByName("Thorns") SpellTargetUnit("target"); end
/script if not buffed("Mark of the Wild", 'target') then CastSpellByName("Mark of the Wild") SpellTargetUnit("target"); end
/decursive
/script for i=1,40 do TargetNearestFriend(); if UnitHealth("target")/UnitHealthMax("target") < 1 and UnitIsPlayer("target") then CastSpellByName("Healing Touch(Rank 2)"); end end
/assist shadeshade
/script if UnitIsPlayer("target") and not buffed("Moonfire","target") then CastSpellByName("Moonfire"); end
/script if UnitIsTapped("target") and not buffed("Moonfire", "target") then CastSpellByName("Moonfire"); end
/script if UnitMana("Player") < 1500 then ClearTarget(); cast("Innervate") SpellTargetUnit("Player"); end
/follow shadeshade

--/script for i=1,40 do TargetNearestFriend(); if UnitHealth("target")/UnitHealthMax("target") < 0.9 and not buffed("Rejuvenation", "target") then if UnitIsPlayer("target") then CastSpellByName("Rejuvenation(rank 5)"); end end end;
--/script if not buffed("Mark of the Wild", 'target') then CastSpellByName("Mark of the Wild"); end
--/script if (UnitHealth("target") / UnitHealthMax("target")) < 0.75 then CastSpellByName("Rejuvenation"); end