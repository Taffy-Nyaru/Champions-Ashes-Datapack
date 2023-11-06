#Warden
function ldmc:entities/warden/powers

#Explosions
execute as @e[tag=head_projectile] run function ldmc:projectiles/dragon_bomb/bomb_rotate
execute as @e[tag=bomb,nbt={OnGround:1b}] run data modify entity @s ignited set value 1b

#Entity effects
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:netherite_sword",tag:{Damage:0,CustomModelData:1390041},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run scoreboard players add @s frostbite_Timer 720
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:iron_sword",tag:{Damage:0,CustomModelData:1390044},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run scoreboard players add @s bleeding_Timer 320

#Pet
execute as fffe1e4a-0000-c020-0000-63b1ffffb28a at @s run data modify entity @s Owner set from entity @a[limit=1,sort=nearest,distance=..2,nbt={Inventory:[{Slot:103b,tag:{id:"ldmc:cat_medal"}}]}] UUID

#Drakeblood Knight
execute as @e[tag=drakeblood_knight] at @s run function ldmc:entities/drakeblood_knight/powers
execute as @e[tag=entity_with_drakeblood_phanalax] at @s run function ldmc:entities/drakeblood_knight/entity_phanalax
execute as @e[tag=drakeblood_phanalax0] at @s unless entity @e[tag=entity_with_drakeblood_phanalax] run kill @s
execute as @e[tag=drakeblood_phanalax1] at @s unless entity @e[tag=entity_with_drakeblood_phanalax] run kill @s
execute as @e[tag=drakeblood_phanalax2] at @s unless entity @e[tag=entity_with_drakeblood_phanalax] run kill @s
execute as @e[tag=drakeblood_phanalax0] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=drakeblood_phanalax1] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=drakeblood_phanalax2] run function ldmc:projectiles/phanalax/rotation

execute as @e[scores={bleeding_Timer=1..}] unless entity @s run scoreboard players set @s bleeding_Timer 0
execute as @e[scores={frostbite_Timer=1..}] unless entity @s run scoreboard players set @s frostbite_Timer 0