/assist shadeshade
/script if UnitIsPlayer("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsTapped("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsUnit("targettarget", "player") then CastSpellByName("Evasion") CastSpellByName("Sprint"); end
/script if UnitIsPlayer("target") and not buffed("Kidney Shot", "target") and GetComboPoints("player", "target") > 2 then cast("Kidney Shot"); end
/script if not buffed("Slice and Dice", "player") and GetComboPoints("player", "target") > 0 then cast("Slice and Dice"); end
/script if UnitIsPlayer("target") and buffed("Slice and Dice", "player") and GetComboPoints("player", "target") > 3 then cast("Eviscerate"); end
/script if UnitIsTapped("target") and buffed("Slice and Dice", "player") and GetComboPoints("player", "target") > 3 then cast("Eviscerate"); end
/script if UnitIsPlayer("target") then cast("Blood Fury") cast("Blade Flurry") cast("Sinister Strike"); end
/script if UnitIsTapped("target") then cast("Blood Fury") cast("Blade Flurry") cast("Sinister Strike"); end
/script if UnitMana("Player") < 30 then cast("Adrenaline Rush"); end
/follow shadeshade

/script if UnitIsPlayer("target") then CastSpellByName("Blood Fury") CastSpellByName("Blade Flurry") CastSpellByName("Adrenaline Rush") CastSpellByName("Sinister Strike"); end
/script if UnitIsTapped("target") then CastSpellByName("Blood Fury") CastSpellByName("Blade Flurry") CastSpellByName("Adrenaline Rush") CastSpellByName("Sinister Strike"); end
/follow shadeshade

--/script if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end