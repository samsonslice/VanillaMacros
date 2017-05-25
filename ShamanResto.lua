/script if UnitMana("Player") < 1000 then use("Major Mana Potion") end;
/script if UnitMana("Player") < 1000 then use("Superior Mana Potion") end;
/script if UnitMana("Player") < 3500 and not buffed("Mana Tide", 'player') then cast("Mana Tide Totem") end;
-- /script if UnitMana("Player") < 2000 then cast("Mana Tide Totem") end;
/decursive
------ COUNTS # of raid members 75% hp and below before going any further:
/script i=1;c=0; if GetRaidRosterInfo(1) then while (i <= GetNumRaidMembers()) do if (UnitHealth("raid"..i) / UnitHealthMax("raid"..i)) < 0.75 then c=c+1; end; i=i+1;end; end;
------ CLEAR target, if self HP is less than 90%, and if self HP is less than 20%, cast nature swiftness, cast healing wave, on self, if missing more than 1900 HP then cast lesser healing wave, on self, if missing more than 600 HP, cast lesser healing wave(rank 4), on self
/script ClearTarget(); if (UnitHealth("player") / UnitHealthMax("player")) < 0.9 then if (UnitHealth("player") / UnitHealthMax("player")) < 0.2 then CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave") SpellTargetUnit("player"); end; if (UnitHealthMax("player") - UnitHealth("player")) > 1900 then CastSpellByName("Lesser Healing Wave") SpellTargetUnit("player"); end; if (UnitHealthMax("player") - UnitHealth("player")) > 600 then CastSpellByName("Lesser Healing Wave(Rank 4)") SpellTargetUnit("player"); end end;
-- CLEAR target, grab raid roster?, loop through range 1-40, grab a random number from the number of raid members list, 
/script ClearTarget(); if GetRaidRosterInfo(1) then for i=1,40 do ri=math.random(1,GetNumRaidMembers()); if (UnitHealth("raid"..ri) / UnitHealthMax("raid"..ri)) < 0.9 and CheckInteractDistance("raid"..ri, 4) then if (UnitHealth("raid"..ri) / UnitHealthMax("raid"..ri)) < 0.2 then CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave"); SpellTargetUnit("raid"..ri); end; if ((UnitHealthMax("raid"..ri))-(UnitHealth("raid"..ri))) > 1900 then cast("Lesser Healing Wave"); SpellTargetUnit("raid"..ri); end; if ((UnitHealthMax("raid"..ri))-(UnitHealth("raid"..ri))) > 600 then cast("Lesser Healing Wave(Rank 4)"); end; SpellTargetUnit("raid"..ri); end end; else for i=1,4 do if (UnitHealth("party"..i) / UnitHealthMax("party"..i)) < 0.9 and CheckInteractDistance("party"..i, 4) then if (UnitHealth("party"..i) / UnitHealthMax("party"..i)) < 0.2 then CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave"); SpellTargetUnit("party"..i); end; if ((UnitHealthMax("party"..i))-(UnitHealth("party"..i))) > 1900 then cast("Lesser Healing Wave"); SpellTargetUnit("party"..i); end; if ((UnitHealthMax("party"..i))-(UnitHealth("party"..i))) > 600 then cast("Lesser Healing Wave(Rank 4)"); end; SpellTargetUnit("party"..i); end end; end;
-- /script ClearTarget();
------ CHECK if healer is in a raid, if yes, loop through 1-40 raid members ->
-- /script if GetRaidRosterInfo(1) then for i=1,40 do ri=math.random(1,GetNumRaidMembers()); end end
------ IF raid member's HP is less than 90% and within range, and if raid member's HP is less than 20%, then cast nature's swiftness, cast healing wave, on that raid member ->
-- /script if (UnitHealth("raid"..ri) / UnitHealthMax("raid"..ri)) < 0.9 and CheckInteractDistance("raid"..ri, 4) then if (UnitHealth("raid"..ri) / UnitHealthMax("raid"..ri)) < 0.2 then CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave") SpellTargetUnit("raid"..ri); end end
------ IF raid member is missing more than 1900 HP, cast lesser healing wave, on that raid member ->
-- /script if ((UnitHealthMax("raid"..ri))-(UnitHealth("raid"..ri))) > 1900 then cast("Lesser Healing Wave") SpellTargetUnit("raid"..ri); end
------ IF raid member is missing more than 600 HP, cast lesser healing wave(rank 4), on that raid member ->
-- /script if ((UnitHealthMax("raid"..ri))-(UnitHealth("raid"..ri))) > 600 then cast("Lesser Healing Wave(Rank 4)") SpellTargetUnit("raid"..ri); end
------ IF not in a raid(in a party), loop through party and see who has less than 90% HP, check if they are within range, then check if they are below 20% HP, if they are below 20% HP, cast nature's swiftness, cast healing wave, on that party member ->
-- /script if GetRaidRosterInfo(0) then for i=1,4 do if (UnitHealth("party"..i) / UnitHealthMax("party"..i)) < 0.9 and CheckInteractDistance("party"..i, 4) then if (UnitHealth("party"..i) / UnitHealthMax("party"..i)) < 0.2 then CastSpellByName("Nature's Swiftness") CastSpellByName("Healing Wave") SpellTargetUnit("party"..i); end end end end
------ IF party member is missing more than 1900 HP, cast lesser healing wave, on party member ->
-- /script if ((UnitHealthMax("party"..i))-(UnitHealth("party"..i))) > 1900 then cast("Lesser Healing Wave") SpellTargetUnit("party"..i); end
------ IF party member is missing more than 600 HP, cast lesser healing wave(rank 4), on party member
-- /script if ((UnitHealthMax("party"..i))-(UnitHealth("party"..i))) > 600 then cast("Lesser Healing Wave(Rank 4)") SpellTargetUnit("party"..i); end
/script if not buffed("Mana Spring", 'player') and not buffed("Mana Tide", 'player') then cast("Mana Spring Totem"); end
/script if not buffed("Grace of Air", 'player') then cast("Grace of Air Totem"); end
/target Tremor Totem
/script if UnitHealthMax("target") ~= 5 then cast("Tremor Totem"); end
/target Flametongue Totem
/script if UnitHealthMax("target") ~= 5 then cast("Flametongue Totem"); end

--/script if UnitIsPlayer("target") or UnitIsEnemy("Player", "target") then cast("Tremor Totem"); end
--/script if not buffed("Strength of Earth", 'player') then cast("Strength of Earth Totem"); end

This will target all your nearby friendly player characters in turn and cast a heal on the first one it comes to with a health level that is below a certain percentage of maximum (in this example 70%). Repeated calls to the macro will step through all nearby friends needing heals until it targets you. The macro checks the health of up to 40 nearby friendly player characters. If a call to this macro casts no heal then neither nearby friendly player characters nor yourself have a health level below the threshold of 70% of maximum:
/script for i=1,40 do TargetNearestFriend(); if UnitHealth("target")/UnitHealthMax("target") < 0.7 then if UnitIsPlayer("target") then CastSpellByName("Lesser Healing Wave") end end end; TargetLastEnemy();
