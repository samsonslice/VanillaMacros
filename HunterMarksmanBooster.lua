/assist shadeshade
/script if not buffed("Aspect of the Hawk", "player") then cast("Aspect of the Hawk"); end
/script if not buffed("Trueshot Aura", "player") then cast("Trueshot Aura"); end
/script if UnitIsTapped("target") then if not IsAutoRepeatAction(36) then CastSpellByName("Auto Shot"); end end
/script if UnitIsTapped("target") then cast("Arcane Shot") cast("Wing Clip"); end
/script if UnitIsUnit("targettarget", "player") then CastSpellByName("Feign Death"); end
/script if UnitIsTapped("target") then PetAttack(); end
/follow shadeshade