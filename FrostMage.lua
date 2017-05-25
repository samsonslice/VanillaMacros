/assist legomyaggro
/script if (UnitHealth("Player") / UnitHealthMax("Player")) < 0.75 then CastSpellByName("Ice Barrier"); end
/script if (UnitHealth("Player") / UnitHealthMax("Player")) < 0.3 then CastSpellByName("Ice Block"); end
/script if (UnitHealth("Player") / UnitHealthMax("Player")) < 0.3 then CastSpellByName("Cold Snap"); end
/script if UnitMana("player") < 221 then CastSpellByName("Evocation") end;
/script UseInventoryItem(14)
/script use("Robe of the Archmage")
/script if buffed("Clearcasting", 'player') then CastSpellByName("Frostbolt"); end
/script if UnitMana("Player") < 221 then CastSpellByName("Frostbolt(Rank 1)"); end
/cast Frostbolt