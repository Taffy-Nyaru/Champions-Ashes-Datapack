summon wither_skeleton ~ ~ ~ {CustomName:'[{"translate":"entity.ldmc.nep_elder","italic":false}]',Health:1024,CanPickUpLoot:1b,PersistenceRequired:1b,Tags:["nep_elder","nep_elder"],ActiveEffects:[{Id:11,Duration:-1,Amplifier:1,ShowParticles:0b},{Id:22,Duration:-1,Amplifier:1,ShowParticles:0b},{Id:16,Duration:-1,Amplifier:1,ShowParticles:0b},{Id:10,Duration:-1,Amplifier:1,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:13f},{Name:"generic.follow_range",Base:2048f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0.4f},{Name:"generic.max_health",Base:1024f}]}
loot replace entity @e[tag=nep_elder] weapon.mainhand loot ldmc:armor/tools/drakeblood_greatsword
loot replace entity @e[tag=nep_elder] weapon.offhand loot ldmc:items/void_totem
loot replace entity @e[tag=nep_elder] armor.head loot ldmc:armor/drakeblood_helmet
loot replace entity @e[tag=nep_elder] armor.chest loot ldmc:armor/drakeblood_chestplate
loot replace entity @e[tag=nep_elder] armor.legs loot ldmc:armor/drakeblood_leggings
loot replace entity @e[tag=nep_elder] armor.feet loot ldmc:armor/drakeblood_boots
execute as @e[tag=nep_elder] run data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b