/script if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end
/script if UnitHealth("Player") / UnitHealthMax("Player") < 0.3 then use("Major Healing Potion") end;
/script if ( not PlayerFrame.inCombat ) then if not buffed("Gift of the Wild", "Player") and not buffed("Mark of the Wild", "Player") then CastSpellByName("Mark of the Wild") SpellTargetUnit("Player"); end end
/script if ( not PlayerFrame.inCombat ) then if not buffed("Thorns", "Player") then CastSpellByName("Thorns") SpellTargetUnit("Player"); end end
/script if ( not PlayerFrame.inCombat ) then if not buffed("Dire Bear Form", "Player") then if buffed("Rejuvenation", "Player") then CastSpellByName("Dire Bear Form"); end end end
/script if ( not PlayerFrame.inCombat ) then if not buffed("Dire Bear Form", "Player") then CastSpellByName("Rejuvenation") SpellTargetUnit("Player"); end end
/script if ( not PlayerFrame.inCombat ) then if buffed("Dire Bear Form", "Player") then if buffed("Rejuvenation", "Player") then CastSpellByName("Enrage") CastSpellByName("Faerie Fire (Feral)(Rank 4)"); end end end
/script if ( not PlayerFrame.inCombat ) then if buffed("Dire Bear Form", "Player") then if not buffed("Rejuvenation", "Player") then CastSpellByName("Dire Bear Form"); end end end
/script if UnitAffectingCombat("player") == 1 then if not buffed("Dire Bear Form", "Player") then CastSpellByName("Dire Bear Form"); end end
/script if not UnitIsUnit("targettarget", "player") then CastSpellByName("Growl") CastSpellByName("Enrage") CastSpellByName("Swipe") else CastSpellByName("Enrage") CastSpellByName("Swipe"); end
/script if UnitAffectingCombat("player") == 1 then if UnitMana("Player") > 19 and not buffed("Demoralizing Roar", "Target") then CastSpellByName("Demoralizing Roar"); end end
/script if UnitAffectingCombat("player") == 1 then if UnitMana("Player") > 29 then CastSpellByName("Maul") CastSpellByName("Swipe"); end end

--UnitAffectingCombat("player") == nil
/sb