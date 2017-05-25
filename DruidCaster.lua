/assist legomyaggro
/script if not buffed("Moonkin Form", "Player") then CastSpellByName("Moonkin Form"); end
/script if (UnitHealth("Player") / UnitHealthMax("Player")) < 0.9 then CastSpellByName("Barkskin"); end
/script CastSpellByName("StarFire")