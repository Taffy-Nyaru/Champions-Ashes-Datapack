scoreboard players remove @s ca.itemCount 1
item modify entity @s weapon.mainhand championsashes:remove_one_item
summon skeleton_horse ~ ~ ~ {Tame:1b,CustomName:'[{"translate":"entity.championsashes.pearl","italic":false}]',Health:50,PersistenceRequired:1b,Tags:["pearl"],Attributes:[{Name:"horse.jump_strength",Base:0.8f},{Name:"generic.movement_speed",Base:0.8f},{Name:"generic.max_health",Base:50f}],Passengers:[{id:wither_skeleton,CustomName:'[{"translate":"entity.championsashes.night_cavalry","italic":false}]',Health:250,PersistenceRequired:1b,Tags:["night_cavalry"],ActiveEffects:[{Id:10,Duration:-1,Amplifier:0,ShowParticles:0b}],HandItems:[{id:"minecraft:netherite_sword",tag:{CustomModelData:1390041},Count:1b},{id:"minecraft:totem_of_undying",tag:{CustomModelData:1380016,Enchantments:[{id:infinity,lvl:1}]},Count:1b}],Attributes:[{Name:"generic.max_health",Base:230f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0.4f},{Name:"generic.follow_range",Base:128f}]}]}
loot replace entity @e[tag=night_cavalry] weapon.mainhand loot championsashes:items/night_cavalry_halberd
loot replace entity @e[tag=night_cavalry] weapon.offhand loot championsashes:items/void_totem
loot replace entity @e[tag=night_cavalry] armor.head loot championsashes:armor/witherite_helmet
loot replace entity @e[tag=night_cavalry] armor.chest loot championsashes:armor/witherite_chestplate
loot replace entity @e[tag=night_cavalry] armor.legs loot championsashes:armor/witherite_leggings
loot replace entity @e[tag=night_cavalry] armor.feet loot championsashes:armor/witherite_boots
execute as @e[tag=night_cavalry] run data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b