/assist samsage
/target High Priest Ven
/script if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end
/script if UnitHealth("Player") / UnitHealthMax("Player") < 0.3 then use("Major Healing Potion") end;
/script if ( PlayerFrame.inCombat ) and UnitHealth("Player") / UnitHealthMax("Player") < 0.2 then CastShapeshiftForm(2) cast("Last Stand") cast("Shield Wall") cast("Shield Block"); end
/script if ( PlayerFrame.inCombat ) and UnitMana("Player") < 30 then cast("Bloodrage"); end
/script if not UnitIsUnit("targettarget", "player") then CastShapeshiftForm(2) cast("Taunt") CastShapeshiftForm(1) cast("Mocking Blow"); end
/script if ( PlayerFrame.inCombat ) and UnitMana("Player") > 30 and UnitIsUnit("targettarget", "player") then CastShapeshiftForm(2) cast("Shield Block"); end
/script if ( PlayerFrame.inCombat ) and UnitMana("Player") > 19 and not buffed("Thunderclap", "target") then CastShapeshiftForm(1) cast("Thunderclap"); end
/script CastShapeshiftForm(2) cast("Shield Slam") cast("Revenge") cast("Sunder Armor");


--/script if ( not PlayerFrame.inCombat ) then
/script if UnitAffectingCombat("player") == 1 then CastSpellByName("Bloodrage") CastSpellByName("Thunder Clap") CastShapeshiftForm(2) CastSpellByName("Shield Slam") CastSpellByName("Revenge") CastSpellByName("Sunder Armor"); end

/script if not UnitIsUnit("targettarget", "player") then CastSpellByName("Taunt"); end
/script if UnitAffectingCombat("player") == nil then CastShapeshiftForm(3) CastSpellByName("Berserker Rage") CastShapeshiftForm(1) CastSpellByName("Charge"); end