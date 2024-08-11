summon wither_skeleton ~ ~ ~ {CustomName:'[{"translate":"entity.championsashes.drakeblood_knight","italic":false}]',Health:120,DeathLootTable:"championsashes:entities/drakeblood_knights",CanPickUpLoot:1b,PersistenceRequired:1b,Tags:["drakeblood_knight"],ActiveEffects:[{Id:18,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:2048f},{Name:"generic.knockback_resistance",Base:0.2f},{Name:"generic.max_health",Base:120f}]}
loot replace entity @e[tag=drakeblood_knight] weapon.mainhand loot championsashes:armor/tools/drakeblood_greatsword
loot replace entity @e[tag=drakeblood_knight] weapon.offhand loot championsashes:items/void_totem
loot replace entity @e[tag=drakeblood_knight] armor.head loot championsashes:armor/drakeblood_helmet
loot replace entity @e[tag=drakeblood_knight] armor.chest loot championsashes:armor/drakeblood_chestplate
loot replace entity @e[tag=drakeblood_knight] armor.legs loot championsashes:armor/drakeblood_leggings
loot replace entity @e[tag=drakeblood_knight] armor.feet loot championsashes:armor/drakeblood_boots
execute as @e[tag=drakeblood_knight] run data modify entity @s ArmorDropChances set value 0
execute as @e[tag=drakeblood_knight] run data modify entity @s HandDropChances set value 0
#execute as @e[tag=drakeblood_knight] run data modify entity @s DeathLootTable set value "championsashes:entities/drakeblood_knights"
execute as @e[tag=drakeblood_knight] run data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b