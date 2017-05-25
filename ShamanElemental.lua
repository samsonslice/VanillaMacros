/assist samsage
/script for i=1,40 do local P=UnitBuff("target", i); if P.IsStealable then cast("Purge"); end end
/script CastSpellByName("Elemental Mastery")
/script if buffed("Elemental Mastery", 'player') then CastSpellByName("Lightning Bolt"); end
/script if buffed("Clearcasting", 'player') then CastSpellByName("Lightning Bolt"); end
/script if UnitMana("Player") < 238 then CastSpellByName("Lightning Bolt(Rank 1)"); end
/script if not buffed("Mana Spring", 'player') then cast("Mana Spring Totem"); end
/script if not buffed("Windfury Totem", "player") then cast("Windfury Totem"); end
/script if not buffed("Strength of Earth", 'player') then cast("Strength of Earth Totem"); end
/script CastSpellByName("Lightning Bolt")

--/script if not buffed("Stoneskin", 'player') then cast("Stoneskin Totem"); end
--/script if not buffed("Grounding Totem Effect", 'player') then cast("Grounding Totem"); end