/assist shadeshade
/script if ( not PlayerFrame.inCombat ) then CastShapeshiftForm(1); end
/script if UnitHealth("Player") / UnitHealthMax("Player") < 0.3 then use("Major Healing Potion") end;
/script if ( PlayerFrame.inCombat ) and UnitHealth("Player") / UnitHealthMax("Player") < 0.2 then CastShapeshiftForm(2) cast("Last Stand") cast("Shield Wall") cast("Shield Block"); end
/script if UnitMana("Player") < 30 then cast("Bloodrage"); end
/script if UnitIsPlayer("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsTapped("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsPlayer("target") then cast("Charge"); end
/script if UnitIsPlayer("target") then CastShapeshiftForm(2) cast("Shield Slam") cast("Revenge") cast("Sunder Armor"); end
/script if UnitIsTapped("target") then cast("Charge"); end
/script if UnitIsTapped("target") then CastShapeshiftForm(2) cast("Shield Slam") cast("Revenge") cast("Sunder Armor"); end
/follow shadeshade