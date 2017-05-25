/assist Samsage
/decursive
/script if UnitMana("Player") < 5500 then use("Robe of the Archmage"); end
/script if UnitMana("player") < 395 then CastSpellByName("Evocation") end;
/script if ( not PlayerFrame.inCombat ) then if not buffed("Mage Armor", "Player") then CastSpellByName("Mage Armor"); end end
/script if ( not PlayerFrame.inCombat ) then if not buffed("Arcane Brilliance", "Player") and not buffed("Arcane Intellect", "Player") then CastSpellByName("Arcane Intellect") SpellTargetUnit("Player"); end end
/script if not buffed("Combustion", "Player") then CastSpellByName("Combustion"); end
/script if UnitIsPlayer("target") then CastSpellByName("Fire Blast") CastSpellByName("Scorch"); end
/script UseInventoryItem(14)
/script UseInventoryItem(13)
/script if buffed("Clearcasting", 'player') then CastSpellByName("Fireball"); end
/script if UnitMana("Player") < 395 then CastSpellByName("Fireball(Rank 1)"); end
/script if not buffed("Fire Vulnerability", "target") then CastSpellByName("Scorch") elseif buffed("Fire Vulnerability", "target") then CastSpellByName("Fireball"); end

/script local count = UnitDebuff("target", "Fire Vulnerability"); return count;
--/run print(select(4,UnitDebuff("target","Fire Vulnerability")));
/script local ("target", "Fire Vulnerability")
/assist samsage
/script local count = UnitDebuff("target", "Fire Vulnerability"); if count < 5 then cast("Scorch"); end
-- /script if not buffed("Fire Vulnerability", "target", nil, 3) then CastSpellByName("Scorch") elseif buffed("Fire Vulnerability", "target", nil, 3) then CastSpellByName("Fireball"); end
-- /script c = count = buffed("Fire Vulnerability", "target"); if c < 3 then CastSpellByName("Scorch") else CastSpellByName("Fireball"); end
--/script for i=1,40; do local name,_,_,count=UnitBuff("target", "Fire Vulnerability"); c="..count.."; if c < 3 then CastSpellByName("Scorch") else CastSpellByName("Fireball"); end end
/script CastSpellByName("Fireball");