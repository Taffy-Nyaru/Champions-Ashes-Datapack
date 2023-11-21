#Warden
function ldmc:entities/warden/powers

#Explosions
execute as @e[tag=head_projectile] run function ldmc:projectiles/dragon_bomb/bomb_rotate
execute as @e[tag=bomb,nbt={OnGround:1b}] run data modify entity @s ignited set value 1b

#Entity effects
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:netherite_sword",tag:{id:"ldmc:night_cavalry_halberd",Damage:0},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run scoreboard players add @s frostbite_Timer 720
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:iron_sword",tag:{id:"ldmc:drakeblood_greatsword",Damage:0},Count:1b}]}] at @s as @a[advancements={ldmc:hurt_players=true},distance=..5] run scoreboard players add @s bleeding_Timer 50
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:iron_sword",tag:{id:"ldmc:drakeblood_greatsword",Damage:0},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run scoreboard players add @s bleeding_Timer 320
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:diamond_axe",tag:{id:"ldmc:black_knight_greataxe",Damage:0},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},tag=parry_success,distance=..5] on attacker run effect give @s strength 5 5 true
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:netherite_sword",tag:{id:"ldmc:ringed_knight_straight_sword",Damage:0},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] on attacker run function ldmc:items/ringed_knight_straight_sword/cancel
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:crossbow",tag:{id:"ldmc:murky_hand_scythe",Damage:0},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run tag @s add stiff
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:crossbow",tag:{id:"ldmc:pontiff_knight_curved_sword",Damage:0},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run tag @s add frost_stiff

#Pet
execute as fffe1e4a-0000-c020-0000-63b1ffffb28a at @s run data modify entity @s Owner set from entity @a[limit=1,sort=nearest,distance=..2,nbt={Inventory:[{Slot:103b,tag:{id:"ldmc:cat_medal"}}]}] UUID

#Drakeblood Knight
execute as @e[tag=drakeblood_knight] at @s run function ldmc:entities/drakeblood_knight/powers
execute as @e[tag=nep_elder] at @s run function ldmc:entities/drakeblood_knight/nep_elder/powers
execute as @e[tag=entity_with_drakeblood_phanalax] at @s run function ldmc:entities/drakeblood_knight/entity_phanalax
execute as @e[tag=drakeblood_phanalax0] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute as @e[tag=drakeblood_phanalax1] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute as @e[tag=drakeblood_phanalax2] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute as @e[tag=drakeblood_phanalax0] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=drakeblood_phanalax1] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=drakeblood_phanalax2] run function ldmc:projectiles/phanalax/rotation
execute unless entity @e[tag=nep_elder] run kill @e[tag=parry_shield]
execute unless entity @e[tag=nep_elder] run kill @e[tag=attacker_indicator]

#Effects
execute store result score @e FireTick run data get entity @s Fire
execute as @e[scores={bleeding_Timer=1..}] at @s run function ldmc:effects/bleeding/bleed
execute as @e[scores={frostbite_Timer=0}] run tag @s remove blood_loss
execute as @e[scores={frostbite_Timer=1..}] at @s run function ldmc:effects/frostbite/frostbite
execute as @e[scores={frostbite_Timer=0}] run tag @s remove frostburst
execute as @e[scores={FireTick=1..}] run scoreboard players set @s frostbite_Timer 0

#Parry
execute as @e[tag=parry_success] run function ldmc:parry/parry_success

#Stiff
execute as @e[tag=stiff] run function ldmc:items/murky/stiff
execute as @e[tag=frost_stiff] run function ldmc:items/pkcs/stiff

tag @a add ally
tag @e[tag=pearl] add ally
tag @e[tag=WARDEN] add ally
tag @e[tag=guards] add ally
tag @e[tag=night_cavalry] add ally

execute unless entity @e[tag=shield_breaker] at @a[limit=1] run summon piglin_brute ~ ~-10 ~ {ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b,Amplifier:1b,ShowIcon:0b}],IsImmuneToZombification:1,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["shield_breaker"],HandItems:[{id:"minecraft:netherite_axe",tag:{Damage:0},Count:1}],HandDropChances:[0f]}
execute as @a[advancements={ldmc:hurt_players=true}] run advancement revoke @s only ldmc:hurt_players