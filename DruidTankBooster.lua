/assist shadeshade
/script if UnitIsPlayer("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsTapped("target") then if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end end
/script if UnitIsTapped("target") and not buffed("Dire Bear Form", "Player") then cast("Dire Bear Form"); end
/script if UnitIsPlayer("target") and not buffed("Dire Bear Form", "Player") then cast("Dire Bear Form"); end
/script if UnitIsPlayer("target") then CastSpellByName("Feral Charge") CastSpellByName("Bash") CastSpellByName("Swipe"); end
/script if UnitIsTapped("target") then if not UnitIsUnit("targettarget", "player") then CastSpellByName("Feral Charge") CastSpellByName("Growl"); end end
/script if UnitIsTapped("target") then CastSpellByName("Enrage") CastSpellByName("Swipe"); end
/follow shadeshade

/script if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end
--/target shadeshade
--/script if ( not PlayerFrame.inCombat ) and buffed("Dire Bear Form", "player") then cast("Dire Bear Form"); end
--/script if not buffed("Thorns", 'target') then CastSpellByName("Thorns"); end
--/script if not buffed("Mark of the Wild", 'target') then CastSpellByName("Mark of the Wild"); end TargetLastEnemy();