#Warden
function ldmc:entities/warden/powers

execute at @a as @e[tag=stiff,distance=..128] run function ldmc:items/stiff

#Explosions
execute if entity @e[tag=head_projectile] as @e[tag=head_projectile] run function ldmc:projectiles/dragon_bomb/bomb_rotate
execute if entity @e[tag=bomb] as @e[tag=bomb,predicate=ldmc:misc/bomb_creeper] run data modify entity @s ignited set value 1b
execute if entity @e[tag=bomb] as @e[tag=bomb] at @s if entity @e[team=!friendly,type=!#ldmc:special_entities,type=!creeper,distance=..10] run damage @s[distance=..10] 1 ldmc:gtx690 by @a[limit=1,sort=nearest]
execute if entity @e[tag=690bomber] as @e[tag=690bomber] at @s if entity @e[team=!friendly,type=!#ldmc:special_entities,type=!creeper,type=!player,distance=..10] run damage @s[distance=..10] 1 ldmc:gtx690 by @a[limit=1,sort=nearest]

#Entity effects(Extreme Optimized)
execute at @a at @e[type=!player,distance=..50,predicate=!ldmc:entity_using_item/no_item] as @e[predicate=ldmc:hurttime,distance=..7] on attacker run function ldmc:entities/using_item

#Digestive Juice
execute if entity @e[predicate=ldmc:misc/digestive_juice] as @e[predicate=ldmc:misc/digestive_juice] at @s if block ~ ~-1 ~ minecraft:mycelium run function ldmc:items/digestive_juice
execute if entity @e[predicate=ldmc:misc/digestive_juice] as @e[predicate=ldmc:misc/digestive_juice] at @s if block ~ ~-1 ~ minecraft:mycelium run function ldmc:items/digestive_juice

#Pet
execute if entity fffe1e4a-0000-c020-0000-63b1ffffb28a as fffe1e4a-0000-c020-0000-63b1ffffb28a at @s run data modify entity @s Owner set from entity @a[limit=1,sort=nearest,distance=..2,predicate=ldmc:using_item/cat_medal] UUID

#Drakeblood Knight
execute if entity @e[tag=drakeblood_knight] as @e[tag=drakeblood_knight] at @s run function ldmc:entities/drakeblood_knight/powers
execute if entity @e[tag=nep_elder] as @e[tag=nep_elder] at @s run function ldmc:entities/drakeblood_knight/nep_elder/powers
execute if entity @e[tag=entity_with_drakeblood_phanalax] as @e[tag=entity_with_drakeblood_phanalax] at @s run function ldmc:entities/drakeblood_knight/entity_phanalax
execute if entity @e[tag=drakeblood_phanalax0] as @e[tag=drakeblood_phanalax0] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute if entity @e[tag=drakeblood_phanalax1] as @e[tag=drakeblood_phanalax1] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute if entity @e[tag=drakeblood_phanalax2] as @e[tag=drakeblood_phanalax2] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute at @e[tag=entity_with_drakeblood_phanalax] as @e[tag=drakeblood_phanalax0,distance=..10] run function ldmc:projectiles/phanalax/rotation
execute at @e[tag=entity_with_drakeblood_phanalax] as @e[tag=drakeblood_phanalax1,distance=..10] run function ldmc:projectiles/phanalax/rotation
execute at @e[tag=entity_with_drakeblood_phanalax] as @e[tag=drakeblood_phanalax2,distance=..10] run function ldmc:projectiles/phanalax/rotation
execute unless entity @e[tag=nep_elder] run kill @e[tag=parry_shield]
execute unless entity @e[tag=nep_elder] run kill @e[tag=attacker_indicator]

#Effects
execute store result score @e FireTick run data get entity @s Fire
execute as @e[scores={bleeding_Timer=1..}] at @s run function ldmc:effects/bleeding/bleed
execute as @e[scores={bleeding_Timer=0}] run tag @s remove blood_loss
execute as @e[scores={frostbite_Timer=1..}] at @s run function ldmc:effects/frostbite/frostbite
execute as @e[scores={frostbite_Timer=0}] run tag @s remove frostburst
execute as @e[scores={scarlet_rot_Timer=1..}] at @s run function ldmc:effects/scarlet_rot/scarlet_rot
execute as @e[scores={scarlet_rot_Timer=0}] run scoreboard players set @s scarlet_rot_delay 0
execute as @e[scores={scarlet_rot_Timer=0}] run tag @s[tag=complete_rotten] remove complete_rotten
execute if entity @e[scores={FireTick=1..}] as @e[scores={FireTick=1..}] run scoreboard players set @s frostbite_Timer 0

#Parry
execute if entity @e[tag=parry_success] as @e[tag=parry_success] run function ldmc:parry/parry_success

#Stiff
execute if entity @e[tag=frost_stiff] as @e[tag=frost_stiff] run function ldmc:items/pkcs/stiff

tag @a[tag=!ally] add ally
tag @e[tag=pearl,tag=!ally] add ally
tag @e[tag=WARDEN,tag=!ally] add ally
tag @e[tag=guards,tag=!ally] add ally
tag @e[tag=night_cavalry,tag=!ally] add ally
tag @e[tag=charmed,tag=!ally] add ally

execute unless entity @e[tag=shield_breaker] at @a[limit=1] run summon piglin_brute ~ ~-10 ~ {ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b,Amplifier:1b,ShowIcon:0b}],IsImmuneToZombification:1,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["shield_breaker"],HandItems:[{id:"minecraft:netherite_axe",tag:{Damage:0},Count:1}],HandDropChances:[0f]}
execute as @e[type=marker,tag=gundyr_hitbox] at @s facing entity @a[limit=1,sort=nearest,tag=gundyr_halberd] feet positioned as @s run tp @s ^ ^ ^-0.4 ~ ~
execute as @a[advancements={ldmc:hurt_players=true}] run advancement revoke @s only ldmc:hurt_players