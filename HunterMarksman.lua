/assist samsage
/script if not buffed("Aspect of the Hawk", "player") then cast("Aspect of the Hawk"); end
/script if not buffed("Trueshot Aura", "player") then cast("Trueshot Aura"); end
/script if not buffed("Hunter's Mark", "target") then cast("Hunter's Mark"); end
/script if not IsAutoRepeatAction(36) then CastSpellByName("Auto Shot"); end
/script cast("Aimed Shot");
/script cast("Rapid Fire");
/script if not buffed("Serpent Sting", "target") then cast("Serpent Sting"); end
/script if UnitIsUnit("targettarget", "player") then CastSpellByName("Feign Death"); end
/script PetAttack();
