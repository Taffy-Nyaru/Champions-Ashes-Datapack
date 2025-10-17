summon wither_skeleton ~ ~ ~ {CustomName:'[{"translate":"entity.championsashes.nep_elder","italic":false}]',Health:256,DeathLootTable:"championsashes:entities/nep_elder",CanPickUpLoot:1b,PersistenceRequired:1b,Tags:["nep_elder","drakeblood_knight"],ActiveEffects:[{Id:14,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:11,Duration:-1,Amplifier:1,ShowParticles:0b},{Id:10,Duration:-1,Amplifier:2,ShowParticles:0b},{Id:1,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:13f},{Name:"generic.follow_range",Base:2048f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.max_health",Base:256f}]}
loot replace entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] weapon.mainhand loot championsashes:armor/tools/drakeblood_greatsword
loot replace entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] weapon.offhand loot championsashes:items/void_totem
loot replace entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] armor.head loot championsashes:armor/drakeblood_helmet
loot replace entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] armor.chest loot championsashes:armor/drakeblood_chestplate
loot replace entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] armor.legs loot championsashes:armor/drakeblood_leggings
loot replace entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] armor.feet loot championsashes:armor/drakeblood_boots
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] run data modify entity @s ArmorDropChances set value [0.0f,0.0f,0.0f,0.0f]
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] run data modify entity @s HandDropChances set value [0.0f,0.0f]

attribute @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] generic.follow_range base set 300
bossbar set nep_elder players @a
tellraw @s [{"translate":"translate.championsashes.nep.start_fight","italic":false}]
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] run data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] run scoreboard players set @s[tag=!loop_lightning_bolt] lightning_bolt_rain 20
execute at @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] run particle enchant ~ ~1.5 ~ 0 0 0 5 1000
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] store result score @s maxHealth run attribute @s generic.max_health base get
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] store result score @s nep_half_health run scoreboard players operation @s maxHealth /= #2 championsashesValue

execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] store result score @s maxHealth run attribute @s generic.max_health base get
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] store result score @s nep_40percent_health.temp run scoreboard players operation @s maxHealth *= #40 championsashesValue
execute as @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] store result score @s nep_40percent_health run scoreboard players operation @s nep_40percent_health.temp /= #100 championsashesValue

scoreboard players set #nep_use_lightning_strike_skill championsashes_Timer 512