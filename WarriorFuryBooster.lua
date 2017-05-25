/assist shadeshade
/script CastShapeshiftForm(1);
/script if UnitIsPlayer("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsTapped("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitMana("Player") < 30 then cast("Bloodrage"); end
/script if not buffed("Battle Shout", "player") then cast("Battle Shout"); end
/script if (UnitHealth("target") / UnitHealthMax("target")) < 0.2 and UnitMana("Player") > 9 then cast("Recklessness"); end
/script if UnitIsTapped("target") and (UnitHealth("target") / UnitHealthMax("target")) < 0.2 then cast("Execute"); end
/script if UnitMana("Player") > 30 and not buffed("Death Wish", "player") then cast("Death Wish"); end
/script if UnitIsPlayer("target") then cast("BloodThirst"); end
/script if UnitIsPlayer("target") then cast("Whirlwind"); end
/script if UnitIsTapped("target") then cast("BloodThirst"); end
/script if UnitIsTapped("target") then cast("Whirlwind"); end
/script if UnitIsPlayer("target") then caststop("Bloodrage", "Intercept"); end
/follow shadeshade