summon wither_skeleton ~ ~ ~ {CustomName:'[{"translate":"entity.ldmc.drakeblood_knight","italic":false}]',Health:120,DeathLootTable:"ldmc:entities/drakeblood_knights",CanPickUpLoot:1b,PersistenceRequired:1b,Tags:["drakeblood_knight"],ActiveEffects:[{Id:18,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:2048f},{Name:"generic.knockback_resistance",Base:0.2f},{Name:"generic.max_health",Base:120f}]}
loot replace entity @e[tag=drakeblood_knight] weapon.mainhand loot ldmc:armor/tools/drakeblood_greatsword
loot replace entity @e[tag=drakeblood_knight] weapon.offhand loot ldmc:items/void_totem
loot replace entity @e[tag=drakeblood_knight] armor.head loot ldmc:armor/drakeblood_helmet
loot replace entity @e[tag=drakeblood_knight] armor.chest loot ldmc:armor/drakeblood_chestplate
loot replace entity @e[tag=drakeblood_knight] armor.legs loot ldmc:armor/drakeblood_leggings
loot replace entity @e[tag=drakeblood_knight] armor.feet loot ldmc:armor/drakeblood_boots
execute as @e[tag=drakeblood_knight] run data modify entity @s ArmorDropChances set value 0
execute as @e[tag=drakeblood_knight] run data modify entity @s HandDropChances set value 0
#execute as @e[tag=drakeblood_knight] run data modify entity @s DeathLootTable set value "ldmc:entities/drakeblood_knights"
execute as @e[tag=drakeblood_knight] run data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b