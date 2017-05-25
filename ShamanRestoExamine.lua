 -- heal raid/party
 if GetRaidRosterInfo(1) then
     for i=1,40
     do
       ri=math.random(1,GetNumRaidMembers())
       if (UnitHealth("raid"..ri) / UnitHealthMax("raid"..ri)) < 0.9 and CheckInteractDistance("raid"..ri, 4) then
         if (UnitHealth("raid"..ri) / UnitHealthMax("raid"..ri)) < 0.2 then
           CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave"); SpellTargetUnit("raid"..ri)
         end
         if ((UnitHealthMax("raid"..ri))-(UnitHealth("raid"..ri))) > 1900 then
           cast("Lesser Healing Wave"); SpellTargetUnit("raid"..ri)
         end
         if ((UnitHealthMax("raid"..ri))-(UnitHealth("raid"..ri))) > 600 then
           cast("Lesser Healing Wave(Rank 4)")
         end
         SpellTargetUnit("raid"..ri)
       end
     end
 else
   for i=1,4
   do
     if (UnitHealth("party"..i) / UnitHealthMax("party"..i)) < 0.9 and CheckInteractDistance("party"..i, 4) then
       if (UnitHealth("party"..i) / UnitHealthMax("party"..i)) < 0.2 then
         CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave"); SpellTargetUnit("party"..i)
       end
       if ((UnitHealthMax("party"..i))-(UnitHealth("party"..i))) > 1900 then
         cast("Lesser Healing Wave"); SpellTargetUnit("party"..i)
       end
       if ((UnitHealthMax("party"..i))-(UnitHealth("party"..i))) > 600 then
         cast("Lesser Healing Wave(Rank 4)")
       end
       SpellTargetUnit("party"..i)
     end
   end
 end

-- heal our self first
if (UnitHealth("player") / UnitHealthMax("player")) < 0.9 then
  if (UnitHealth("player") / UnitHealthMax("player")) < 0.2 then
    CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave") SpellTargetUnit("player")
  end
  if (UnitHealthMax("player") - UnitHealth("player")) > 1900 then
    CastSpellByName("Lesser Healing Wave") SpellTargetUnit("player")
  end
  if (UnitHealthMax("player") - UnitHealth("player")) > 600 then
    CastSpellByName("Lesser Healing Wave(Rank 4)") SpellTargetUnit("player")
  end
end


-- count number of raid members with less than 75% HP
i=1
c=0
if GetRaidRosterInfo(1) then
  while (i <= GetNumRaidMembers())
  do
    if (UnitHealth("raid"..i) / UnitHealthMax("raid"..i)) < 0.75 then
      c=c+1
    end
    i=i+1
  end
end

-- be sure to cast scorch twice (put at very top of macro)
if buffed("Fire Vulnerability", "target") then
  CastSpellByName("Scorch")
  

for i=0,2
do
  CastSpellByName("Scorch")
end
CastSpellByName("Fireball")
--if not buffed("Fire Vulnerability", "target") then