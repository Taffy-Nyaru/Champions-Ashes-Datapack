summon wither_skeleton ~ ~ ~ {CustomName:'[{"translate":"entity.ldmc.nep_elder","italic":false}]',Health:512,DeathLootTable:"ldmc:entities/nep_elder",CanPickUpLoot:1b,PersistenceRequired:1b,Tags:["nep_elder","drakeblood_knight"],ActiveEffects:[{Id:10,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:13f},{Name:"generic.follow_range",Base:2048f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0.4f},{Name:"generic.max_health",Base:512f}]}
loot replace entity @e[tag=nep_elder] weapon.mainhand loot ldmc:armor/tools/drakeblood_greatsword
loot replace entity @e[tag=nep_elder] weapon.offhand loot ldmc:items/void_totem
loot replace entity @e[tag=nep_elder] armor.head loot ldmc:armor/drakeblood_helmet
loot replace entity @e[tag=nep_elder] armor.chest loot ldmc:armor/drakeblood_chestplate
loot replace entity @e[tag=nep_elder] armor.legs loot ldmc:armor/drakeblood_leggings
loot replace entity @e[tag=nep_elder] armor.feet loot ldmc:armor/drakeblood_boots
bossbar set nep_elder players @s
tellraw @s [{"translate":"translate.ldmc.nep.start_fight","italic":false}]
#execute as @e[tag=nep_elder] run data modify entity @s DeathLootTable set value "ldmc:entities/nep_elder"
execute as @e[tag=nep_elder] run data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b
execute at @s run particle enchant ~ ~2 ~ 0 0 0 5 300