Player.create(name:"Jordy")
Player.create(name:"Mak")

Character.create(name:"Whilhelm") do |character|
  character.player_id = 1
end

Character.create(name:"Craig") do |character|
  character.player_id = 1
end

Character.create(name:"Leviathan") do |character|
  character.player_id = 2
end

Level.create(character_id: 1) do |level|
  level = 10
end

Level.create(character_id: 2) do |level|
  level = 1
end


Character_Class.find_or_create_by(name:"Barbarian") do |character_class|
  character_class.alignment = "Any Nonlawful"
  character_class.hit_dice = 12
  character_class.skill_rank_per_level = 4
  character_class.weapon_armor_proficiency = "All simple and martial weapons, Light Armor, Medium Armor, Shields (excluding tower shields)"
end
Character_Class.find_or_create_by(name:"Bard") do |character_class|
  character_class.alignment = "Any"
  character_class.hit_dice = 8
  character_class.skill_rank_per_level = 6
  character_class.weapon_armor_proficiency = "All simple weapons, Longsword, Rapier, Short Sword, Shortbow, Whip, Light Armor, Shields (excluding tower shields)"
end
Character_Class.find_or_create_by(name:"Cleric") do |character_class|
  character_class.alignment = "One step within deity's"
  character_class.hit_dice = 8
  character_class.skill_rank_per_level = 2
  character_class.weapon_armor_proficiency = "All simple weapons, Favored Weapon of Diety, Light Armor, Medium Armor, Shields (excluding tower shields)"
end
Character_Class.find_or_create_by(name:"Druid") do |character_class|
  character_class.alignment = "Any neutral"
  character_class.hit_dice = 8
  character_class.skill_rank_per_level = 4
  character_class.weapon_armor_proficiency = "Club, Dagger, Dart, Quarterstaff, Scimitar, Scythe, Sickle, Shortspear, Sling, Spear, Light Armor, Medium Armor, Shields (excluding tower shields)"
end
Character_Class.find_or_create_by(name:"Fighter") do |character_class|
  character_class.alignment = "Any"
  character_class.hit_dice = 10
  character_class.skill_rank_per_level = 2
  character_class.weapon_armor_proficiency = "All simple and martial weapons, All Armor, All Shields"
end
Character_Class.find_or_create_by(name:"Monk") do |character_class|
  character_class.alignment = "Any Lawful"
  character_class.hit_dice = 8
  character_class.skill_rank_per_level = 4
  character_class.weapon_armor_proficiency = "Club, Crossbow (light or heavy), Dagger, Handaxe, Javelin, Kama, Nunchaku, Quarterstaff, Sai, Shortspear, Short Sword, Shuriken, Siangham, Sling, Spear"
end
Character_Class.find_or_create_by(name:"Paladin") do |character_class|
  character_class.alignment = "Lawful Good"
  character_class.hit_dice = 10
  character_class.skill_rank_per_level = 2
  character_class.weapon_armor_proficiency = "All simple and martial weapons, All Armor, Shields (excluding tower shields)"
end
Character_Class.find_or_create_by(name:"Ranger") do |character_class|
  character_class.alignment = "Any"
  character_class.hit_dice = 10
  character_class.skill_rank_per_level = 6
  character_class.weapon_armor_proficiency = "All simple and martial weapons, Light Armor, Medium Armor, Shields (Excluding Tower Shields)"
end
Character_Class.find_or_create_by(name:"Rogue") do |character_class|
  character_class.alignment = "Any"
  character_class.hit_dice = 8
  character_class.skill_rank_per_level = 8
  character_class.weapon_armor_proficiency = "All simple weapons, Hand Crossbow, Rapier, Sap, Shortbow, Short Sword, Light Armor"
end
Character_Class.find_or_create_by(name:"Sorcerer") do |character_class|
  character_class.alignment = "Any"
  character_class.hit_dice = 6
  character_class.skill_rank_per_level = 2
  character_class.weapon_armor_proficiency = "All simple weapons"
end
Character_Class.find_or_create_by(name:"Wizard") do |character_class|
  character_class.alignment = "Any"
  character_class.hit_dice = 6
  character_class.skill_rank_per_level = 2
  character_class.weapon_armor_proficiency = "Club, Dagger, Crossbow (light or heavy), Quarterstaff"
end

Skill.find_or_create_by(name:"Acrobatics") do |skill|
  skill.mod = "DEX"
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Appraise") do |skill|
  skill.mod = "INT"
end
Skill.find_or_create_by(name:"Bluff") do |skill|
  skill.mod = "CHA"
end
Skill.find_or_create_by(name:"Climb") do |skill|
  skill.mod = "STR"
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Craft") do |skill|
  skill.mod = "INT"
end
Skill.find_or_create_by(name:"Diplomacy") do |skill|
  skill.mod = "CHA"
end
Skill.find_or_create_by(name:"Disable Device") do |skill|
  skill.mod = "DEX"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Disguise") do |skill|
  skill.mod = "CHA"
end
Skill.find_or_create_by(name:"Escape Artist") do |skill|
  skill.mod = "DEX"
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Fly") do |skill|
  skill.mod = "DEX"
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Handle Animal") do |skill|
  skill.mod = "CHA"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Heal") do |skill|
  skill.mod = "WIS"
end
Skill.find_or_create_by(name:"Intimidate") do |skill|
  skill.mod = "CHA"
end
Skill.find_or_create_by(name:"Knowledge (arcana)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (dungeoneering)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (engineering)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (geography)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (history)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (local)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (nature)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (nobility)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (planes)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Knowledge (religion)") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Linguistics") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Perception") do |skill|
  skill.mod = "WIS"
end
Skill.find_or_create_by(name:"Perform") do |skill|
  skill.mod = "CHA"
end
Skill.find_or_create_by(name:"Profession") do |skill|
  skill.mod = "WIS"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Ride") do |skill|
  skill.mod = "DEX"
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Sense Motive") do |skill|
  skill.mod = "WIS"
end
Skill.find_or_create_by(name:"Sleight of Hand") do |skill|
  skill.mod = "DEX"
  skill.untrained = false
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Spellcraft") do |skill|
  skill.mod = "INT"
  skill.untrained = false
end
Skill.find_or_create_by(name:"Stealth") do |skill|
  skill.mod = "DEX"
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Survival") do |skill|
  skill.mod = "WIS"
end
Skill.find_or_create_by(name:"Swim") do |skill|
  skill.mod = "STR"
  skill.armor_check_penalty = true
end
Skill.find_or_create_by(name:"Use Magic Device") do |skill|
  skill.mod = "CHA"
  skill.untrained = false
end

Proficiency.create(character_class_id: 1, skill_id: 1)
Proficiency.create(character_class_id: 1, skill_id: 4)
Proficiency.create(character_class_id: 1, skill_id: 5)
Proficiency.create(character_class_id: 1, skill_id: 11)
Proficiency.create(character_class_id: 1, skill_id: 13)
Proficiency.create(character_class_id: 1, skill_id: 20)
Proficiency.create(character_class_id: 1, skill_id: 25)
Proficiency.create(character_class_id: 1, skill_id: 28)
Proficiency.create(character_class_id: 1, skill_id: 33)
Proficiency.create(character_class_id: 1, skill_id: 34)
Proficiency.create(character_class_id: 2, skill_id: 1)
Proficiency.create(character_class_id: 2, skill_id: 2)
Proficiency.create(character_class_id: 2, skill_id: 3)
Proficiency.create(character_class_id: 2, skill_id: 4)
Proficiency.create(character_class_id: 2, skill_id: 5)
Proficiency.create(character_class_id: 2, skill_id: 6)
Proficiency.create(character_class_id: 2, skill_id: 8)
Proficiency.create(character_class_id: 2, skill_id: 9)
Proficiency.create(character_class_id: 2, skill_id: 13)
Proficiency.create(character_class_id: 2, skill_id: 14)
Proficiency.create(character_class_id: 2, skill_id: 15)
Proficiency.create(character_class_id: 2, skill_id: 16)
Proficiency.create(character_class_id: 2, skill_id: 17)
Proficiency.create(character_class_id: 2, skill_id: 18)
Proficiency.create(character_class_id: 2, skill_id: 19)
Proficiency.create(character_class_id: 2, skill_id: 20)
Proficiency.create(character_class_id: 2, skill_id: 21)
Proficiency.create(character_class_id: 2, skill_id: 22)
Proficiency.create(character_class_id: 2, skill_id: 23)
Proficiency.create(character_class_id: 2, skill_id: 24)
Proficiency.create(character_class_id: 2, skill_id: 25)
Proficiency.create(character_class_id: 2, skill_id: 26)
Proficiency.create(character_class_id: 2, skill_id: 27)
Proficiency.create(character_class_id: 2, skill_id: 29)
Proficiency.create(character_class_id: 2, skill_id: 30)
Proficiency.create(character_class_id: 2, skill_id: 31)
Proficiency.create(character_class_id: 2, skill_id: 32)
Proficiency.create(character_class_id: 2, skill_id: 35)
Proficiency.create(character_class_id: 3, skill_id: 2)
Proficiency.create(character_class_id: 3, skill_id: 5)
Proficiency.create(character_class_id: 3, skill_id: 6)
Proficiency.create(character_class_id: 3, skill_id: 12)
Proficiency.create(character_class_id: 3, skill_id: 14)
Proficiency.create(character_class_id: 3, skill_id: 18)
Proficiency.create(character_class_id: 3, skill_id: 21)
Proficiency.create(character_class_id: 3, skill_id: 22)
Proficiency.create(character_class_id: 3, skill_id: 23)
Proficiency.create(character_class_id: 3, skill_id: 24)
Proficiency.create(character_class_id: 3, skill_id: 27)
Proficiency.create(character_class_id: 3, skill_id: 29)
Proficiency.create(character_class_id: 3, skill_id: 31)
Proficiency.create(character_class_id: 4, skill_id: 4)
Proficiency.create(character_class_id: 4, skill_id: 5)
Proficiency.create(character_class_id: 4, skill_id: 10)
Proficiency.create(character_class_id: 4, skill_id: 11)
Proficiency.create(character_class_id: 4, skill_id: 12)
Proficiency.create(character_class_id: 4, skill_id: 17)
Proficiency.create(character_class_id: 4, skill_id: 20)
Proficiency.create(character_class_id: 4, skill_id: 25)
Proficiency.create(character_class_id: 4, skill_id: 27)
Proficiency.create(character_class_id: 4, skill_id: 28)
Proficiency.create(character_class_id: 4, skill_id: 33)
Proficiency.create(character_class_id: 4, skill_id: 34)
Proficiency.create(character_class_id: 5, skill_id: 4)
Proficiency.create(character_class_id: 5, skill_id: 5)
Proficiency.create(character_class_id: 5, skill_id: 11)
Proficiency.create(character_class_id: 5, skill_id: 13)
Proficiency.create(character_class_id: 5, skill_id: 15)
Proficiency.create(character_class_id: 5, skill_id: 16)
Proficiency.create(character_class_id: 5, skill_id: 27)
Proficiency.create(character_class_id: 5, skill_id: 28)
Proficiency.create(character_class_id: 5, skill_id: 33)
Proficiency.create(character_class_id: 5, skill_id: 34)
Proficiency.create(character_class_id: 6, skill_id: 1)
Proficiency.create(character_class_id: 6, skill_id: 4)
Proficiency.create(character_class_id: 6, skill_id: 5)
Proficiency.create(character_class_id: 6, skill_id: 9)
Proficiency.create(character_class_id: 6, skill_id: 13)
Proficiency.create(character_class_id: 6, skill_id: 18)
Proficiency.create(character_class_id: 6, skill_id: 23)
Proficiency.create(character_class_id: 6, skill_id: 25)
Proficiency.create(character_class_id: 6, skill_id: 26)
Proficiency.create(character_class_id: 6, skill_id: 27)
Proficiency.create(character_class_id: 6, skill_id: 28)
Proficiency.create(character_class_id: 6, skill_id: 29)
Proficiency.create(character_class_id: 6, skill_id: 32)
Proficiency.create(character_class_id: 6, skill_id: 34)
Proficiency.create(character_class_id: 7, skill_id: 5)
Proficiency.create(character_class_id: 7, skill_id: 6)
Proficiency.create(character_class_id: 7, skill_id: 11)
Proficiency.create(character_class_id: 7, skill_id: 12)
Proficiency.create(character_class_id: 7, skill_id: 21)
Proficiency.create(character_class_id: 7, skill_id: 23)
Proficiency.create(character_class_id: 7, skill_id: 27)
Proficiency.create(character_class_id: 7, skill_id: 28)
Proficiency.create(character_class_id: 7, skill_id: 29)
Proficiency.create(character_class_id: 7, skill_id: 31)
Proficiency.create(character_class_id: 8, skill_id: 4)
Proficiency.create(character_class_id: 8, skill_id: 5)
Proficiency.create(character_class_id: 8, skill_id: 11)
Proficiency.create(character_class_id: 8, skill_id: 12)
Proficiency.create(character_class_id: 8, skill_id: 13)
Proficiency.create(character_class_id: 8, skill_id: 15)
Proficiency.create(character_class_id: 8, skill_id: 17)
Proficiency.create(character_class_id: 8, skill_id: 20)
Proficiency.create(character_class_id: 8, skill_id: 25)
Proficiency.create(character_class_id: 8, skill_id: 27)
Proficiency.create(character_class_id: 8, skill_id: 28)
Proficiency.create(character_class_id: 8, skill_id: 31)
Proficiency.create(character_class_id: 8, skill_id: 32)
Proficiency.create(character_class_id: 8, skill_id: 33)
Proficiency.create(character_class_id: 8, skill_id: 34)
Proficiency.create(character_class_id: 9, skill_id: 1)
Proficiency.create(character_class_id: 9, skill_id: 2)
Proficiency.create(character_class_id: 9, skill_id: 3)
Proficiency.create(character_class_id: 9, skill_id: 4)
Proficiency.create(character_class_id: 9, skill_id: 5)
Proficiency.create(character_class_id: 9, skill_id: 6)
Proficiency.create(character_class_id: 9, skill_id: 7)
Proficiency.create(character_class_id: 9, skill_id: 8)
Proficiency.create(character_class_id: 9, skill_id: 9)
Proficiency.create(character_class_id: 9, skill_id: 13)
Proficiency.create(character_class_id: 9, skill_id: 15)
Proficiency.create(character_class_id: 9, skill_id: 19)
Proficiency.create(character_class_id: 9, skill_id: 24)
Proficiency.create(character_class_id: 9, skill_id: 25)
Proficiency.create(character_class_id: 9, skill_id: 26)
Proficiency.create(character_class_id: 9, skill_id: 27)
Proficiency.create(character_class_id: 9, skill_id: 29)
Proficiency.create(character_class_id: 9, skill_id: 30)
Proficiency.create(character_class_id: 9, skill_id: 32)
Proficiency.create(character_class_id: 9, skill_id: 34)
Proficiency.create(character_class_id: 9, skill_id: 35)
Proficiency.create(character_class_id: 10, skill_id: 2)
Proficiency.create(character_class_id: 10, skill_id: 3)
Proficiency.create(character_class_id: 10, skill_id: 5)
Proficiency.create(character_class_id: 10, skill_id: 10)
Proficiency.create(character_class_id: 10, skill_id: 13)
Proficiency.create(character_class_id: 10, skill_id: 14)
Proficiency.create(character_class_id: 10, skill_id: 27)
Proficiency.create(character_class_id: 10, skill_id: 31)
Proficiency.create(character_class_id: 10, skill_id: 35)
Proficiency.create(character_class_id: 11, skill_id: 2)
Proficiency.create(character_class_id: 11, skill_id: 5)
Proficiency.create(character_class_id: 11, skill_id: 10)
Proficiency.create(character_class_id: 11, skill_id: 14)
Proficiency.create(character_class_id: 11, skill_id: 15)
Proficiency.create(character_class_id: 11, skill_id: 16)
Proficiency.create(character_class_id: 11, skill_id: 17)
Proficiency.create(character_class_id: 11, skill_id: 18)
Proficiency.create(character_class_id: 11, skill_id: 19)
Proficiency.create(character_class_id: 11, skill_id: 20)
Proficiency.create(character_class_id: 11, skill_id: 21)
Proficiency.create(character_class_id: 11, skill_id: 22)
Proficiency.create(character_class_id: 11, skill_id: 23)
Proficiency.create(character_class_id: 11, skill_id: 24)
Proficiency.create(character_class_id: 11, skill_id: 27)
Proficiency.create(character_class_id: 11, skill_id: 31)

