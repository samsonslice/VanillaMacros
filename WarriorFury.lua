/assist samsage
/script CastShapeshiftForm(1);
/script if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end
/script if UnitMana("Player") < 30 then cast("Bloodrage"); end
/script if not buffed("Battle Shout", "player") then cast("Battle Shout"); end
/script if (UnitHealth("target") / UnitHealthMax("target")) < 0.2 and UnitMana("Player") > 9 then cast("Recklessness"); end
/script if (UnitHealth("target") / UnitHealthMax("target")) < 0.2 then cast("Execute"); end
/script if UnitMana("Player") > 30 and not buffed("Death Wish", "player") then cast("Death Wish"); end
/script cast("BloodThirst");
/script cast("Whirlwind");
/script if UnitIsPlayer("target") then caststop("Bloodrage", "Intercept"); end

/script if UnitIsTapped("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsTapped("target") then if not UnitIsUnit("targettarget", "player") then CastShapeshiftForm(2) CastSpellByName("Taunt") CastSpellByName("Sunder"); end end
/script if UnitIsTapped("target") then CastShapeshiftForm(2) CastSpellByName("Sunder"); end
/follow shadeshade

--/script if ( not PlayerFrame.inCombat ) then CastSpellByName("Bloodrage"); end
--/script if ( PlayerFrame.inCombat ) then CastSpellByName("Berserker Rage"); end
--/script if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end