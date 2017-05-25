-- /script if not IsCurrentAction(37) then UseAction(37) end;
/script if not ma then for i = 1,72 do if IsAttackAction(i) then ma = i; end; end; end; if ma then if not IsCurrentAction(ma) then UseAction(ma); end end
/script if UnitHealth("Player") / UnitHealthMax("Player") < 0.3 then use("Major Healing Potion") end;
-- Not in combat, not in bear form, have rejuv on, then go bear:
/script if UnitAffectingCombat("player") == nil then if not buffed("Dire Bear Form", "Player") then if buffed("Rejuvenation", "Player") then CastSpellByName("Dire Bear Form"); end end end
-- Not in combat, not in bear form, then cast rejuv on self:
/script if UnitAffectingCombat("player") == nil then if not buffed("Dire Bear Form", "Player") then CastSpellByName("Rejuvenation") SpellTargetUnit("Player"); end end
-- Not in combat, but in bear form, and have rejuv on, then cast enrage, and cast faerie fire:
/script if UnitAffectingCombat("player") == nil then if buffed("Dire Bear Form", "Player") then if buffed("Rejuvenation", "Player") then CastSpellByName("Enrage") CastSpellByName("Faerie Fire (Feral)(Rank 4)"); end end end
-- Not in combat, but in bear form, but no rejuv on, then UNDO-bear (to pre-cast rejuv):
/script if UnitAffectingCombat("player") == nil then if buffed("Dire Bear Form", "Player") then if not buffed("Rejuvenation", "Player") then CastSpellByName("Dire Bear Form"); end end end
-- IN combat, but not in bear form, then Turn into bear, if my target isnt attacking me, then cast taunt, cast enrage, cast swipe, OR if target is already attacking me, cast enrage, cast swipe:
/script if UnitAffectingCombat("player") == 1 then if not buffed("Dire Bear Form", "Player") then CastSpellByName("Dire Bear Form"); if not UnitIsUnit("targettarget", "player") then CastSpellByName("Growl") CastSpellByName("Enrage") CastSpellByName("Swipe") else CastSpellByName("Enrage") CastSpellByName("Swipe"); end end end
-- CAN CHANGE ABOVE LINE TO:
-- will turn bear if in combat and not in bear:
-- /script if UnitAffectingCombat("player") == 1 then if not buffed("Dire Bear Form", "Player") then CastSpellByName("Dire Bear Form"); end end
-- SMART auto-taunt, auto enrage, auto swipe:
-- /script if not UnitIsUnit("targettarget", "player") then CastSpellByName("Growl") CastSpellByName("Enrage") CastSpellByName("Swipe") else CastSpellByName("Enrage") CastSpellByName("Swipe"); end
-- IN combat, rage is more than 19, and target doesnt already have demoralize debuff, then cast demoralie debuff:
/script if UnitAffectingCombat("player") == 1 then if UnitMana("Player") > 19 and not buffed("Demoralizing Roar", "Target") then CastSpellByName("Demoralizing Roar"); end end
-- IN combat, already in bear form, but target isnt targeting me, then cast growl, cast enrage, cast swipe OR IN combat, already in bear form, target IS currently targetting me, just cast enrage, cast swipe
-- CAN DELETE BELOW LINE after making changes in lines 13-17!!
/script if UnitAffectingCombat("player") == 1 then if buffed("Dire Bear Form", "Player") then if not UnitIsUnit("targettarget", "player") then CastSpellByName("Growl") CastSpellByName("Enrage") CastSpellByName("Swipe") else CastSpellByName("Enrage") CastSpellByName("Swipe"); end end end
-- IN combat, rage is more than 29, cast maul, cast swipe
/script if UnitAffectingCombat("player") == 1 then if UnitMana("Player") > 29 then CastSpellByName("Maul") CastSpellByName("Swipe"); end end