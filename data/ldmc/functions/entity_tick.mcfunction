#Warden
function ldmc:entities/warden/powers

#Explosions
execute as @e[tag=head_projectile] run function ldmc:projectiles/dragon_bomb/bomb_rotate
execute as @e[tag=bomb,nbt={OnGround:1b}] run data modify entity @s ignited set value 1b

#Entity effects
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:netherite_sword",tag:{Damage:0,CustomModelData:1390041},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run scoreboard players add @s frostbite_Timer 720
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:iron_sword",tag:{Damage:0,CustomModelData:1390044},Count:1b}]}] at @s as @a[advancements={ldmc:hurt_players=true},distance=..5] run scoreboard players add @s bleeding_Timer 50
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:iron_sword",tag:{Damage:0,CustomModelData:1390044},Count:1b}]}] at @s on target if entity @s[type=!player,nbt={HurtTime:1s},distance=..5] run scoreboard players add @s bleeding_Timer 320

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

#Effects
execute as @e[scores={bleeding_Timer=1..}] at @s run function ldmc:effects/bleeding/bleed
execute as @e[scores={frostbite_Timer=0}] run tag @s remove blood_loss
execute as @e[scores={frostbite_Timer=1..}] at @s run function ldmc:effects/frostbite/frostbite
execute as @e[scores={frostbite_Timer=0}] run tag @s remove frostburst

#Parry
execute as @e[tag=parry_success] run function ldmc:parry/parry_success

tag @a add ally
tag @e[tag=pearl] add ally
tag @e[tag=WARDEN] add ally
tag @e[tag=guards] add ally
tag @e[tag=night_cavalry] add ally

execute at @a[limit=1] run teleport @e[tag=shield_breaker] ~ ~300 ~
execute unless entity @e[tag=shield_breaker] at @a[limit=1] run summon piglin_brute ~ ~ ~ {ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b,Amplifier:1b,ShowIcon:0b}],IsImmuneToZombification:1,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["shield_breaker"],HandItems:[{id:"minecraft:netherite_axe",tag:{Damage:0},Count:1}],HandDropChances:[0f]}