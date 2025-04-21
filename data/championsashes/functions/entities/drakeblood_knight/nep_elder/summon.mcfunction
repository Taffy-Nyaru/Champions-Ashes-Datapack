summon wither_skeleton ~ ~ ~ {CustomName:'[{"translate":"entity.championsashes.nep_elder","italic":false}]',Health:256,DeathLootTable:"championsashes:entities/nep_elder",CanPickUpLoot:1b,PersistenceRequired:1b,Tags:["nep_elder","drakeblood_knight"],ActiveEffects:[{Id:11,Duration:-1,Amplifier:1,ShowParticles:0b},{Id:10,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:1,Duration:-1,Amplifier:1,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:13f},{Name:"generic.follow_range",Base:2048f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.max_health",Base:256f}]}
loot replace entity @e[tag=nep_elder] weapon.mainhand loot championsashes:armor/tools/drakeblood_greatsword
loot replace entity @e[tag=nep_elder] weapon.offhand loot championsashes:items/void_totem
loot replace entity @e[tag=nep_elder] armor.head loot championsashes:armor/drakeblood_helmet
loot replace entity @e[tag=nep_elder] armor.chest loot championsashes:armor/drakeblood_chestplate
loot replace entity @e[tag=nep_elder] armor.legs loot championsashes:armor/drakeblood_leggings
loot replace entity @e[tag=nep_elder] armor.feet loot championsashes:armor/drakeblood_boots
bossbar set nep_elder players @s
tellraw @s [{"translate":"translate.championsashes.nep.start_fight","italic":false}]
#execute as @e[tag=nep_elder] run data modify entity @s DeathLootTable set value "championsashes:entities/nep_elder"
execute as @e[tag=nep_elder] run data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b
execute at @s run particle enchant ~ ~2 ~ 0 0 0 5 300