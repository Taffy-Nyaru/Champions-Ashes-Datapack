#Warden
function championsashes:entities/warden/powers

execute at @a as @e[tag=stiff,distance=..128] run function championsashes:items/stiff

#Explosions
execute as @e[tag=bomb,predicate=championsashes:misc/bomb_creeper] run data modify entity @s ignited set value 1b
execute as @e[tag=bomb] at @s if entity @e[team=!friendly,type=!#championsashes:special_entities,type=!creeper,distance=..10] run damage @s[distance=..10] 1 championsashes:gtx690 by @a[limit=1,sort=nearest]
execute as @e[tag=690bomber] at @s if entity @e[team=!friendly,type=!#championsashes:special_entities,type=!creeper,type=!player,distance=..10] run damage @s[distance=..10] 1 championsashes:gtx690 by @a[limit=1,sort=nearest]

#Entity effects(Extreme Optimized)
execute at @a at @e[type=!#championsashes:special_entities,distance=..50,predicate=!championsashes:entity_using_item/no_item] as @e[type=!#championsashes:special_entities,predicate=championsashes:hurttime,distance=..7] on attacker run function championsashes:entities/using_items/using_item

#Digestive Juice
execute as @e[predicate=championsashes:misc/digestive_juice] at @s if block ~ ~-1 ~ minecraft:mycelium run function championsashes:items/digestive_juice
execute as @e[predicate=championsashes:misc/digestive_juice] at @s if block ~ ~-1 ~ minecraft:mycelium run function championsashes:items/digestive_juice

#Pet
execute if entity fffe1e4a-0000-c020-0000-63b1ffffb28a as fffe1e4a-0000-c020-0000-63b1ffffb28a at @s run data modify entity @s Owner set from entity @a[limit=1,sort=nearest,distance=..2,predicate=championsashes:using_item/cat_medal] UUID

#Drakeblood Knight
execute as @e[tag=drakeblood_knight] at @s run function championsashes:entities/drakeblood_knight/powers
execute as @e[tag=nep_elder] at @s run function championsashes:entities/drakeblood_knight/nep_elder/powers
execute as @e[tag=entity_with_drakeblood_phanalax] at @s run function championsashes:entities/drakeblood_knight/entity_phanalax
execute as @e[tag=drakeblood_phanalax0] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute as @e[tag=drakeblood_phanalax1] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute as @e[tag=drakeblood_phanalax2] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,distance=..10] run kill @s
execute at @e[tag=entity_with_drakeblood_phanalax] as @e[tag=drakeblood_phanalax0,distance=..10] run function championsashes:projectiles/phanalax/rotation
execute at @e[tag=entity_with_drakeblood_phanalax] as @e[tag=drakeblood_phanalax1,distance=..10] run function championsashes:projectiles/phanalax/rotation
execute at @e[tag=entity_with_drakeblood_phanalax] as @e[tag=drakeblood_phanalax2,distance=..10] run function championsashes:projectiles/phanalax/rotation
execute unless entity @e[tag=nep_elder] run kill @e[tag=parry_shield]
execute unless entity @e[tag=nep_elder] run kill @e[tag=attacker_indicator]

#Effects
execute store result score @e FireTick run data get entity @s Fire
execute as @e[scores={bleeding_Timer=1..}] at @s run function championsashes:effects/bleeding/bleed
execute as @e[scores={bleeding_Timer=0}] run tag @s remove blood_loss
execute as @e[scores={frostbite_Timer=1..}] at @s run function championsashes:effects/frostbite/frostbite
execute as @e[scores={frostbite_Timer=0}] run tag @s remove frostburst
execute as @e[scores={scarlet_rot_Timer=1..}] at @s run function championsashes:effects/scarlet_rot/scarlet_rot
execute as @e[scores={scarlet_rot_Timer=0}] run scoreboard players set @s scarlet_rot_delay 0
execute as @e[scores={scarlet_rot_Timer=0}] run tag @s[tag=complete_rotten] remove complete_rotten
execute if entity @e[scores={FireTick=1..}] as @e[scores={FireTick=1..}] run scoreboard players set @s frostbite_Timer 0

#Parry
execute if entity @e[tag=parry_success] as @e[tag=parry_success] run function championsashes:parry/parry_success

#Stiff
execute if entity @e[tag=frost_stiff] as @e[tag=frost_stiff] run function championsashes:items/pkcs/stiff

#Void Eye
execute as @e[type=marker,tag=void_marker] run scoreboard players add @s void_eye_timer 1
execute as @e[type=marker,tag=void_marker,scores={void_eye_timer=1..}] run function championsashes:items/void_eye/effect

#Void Eye
execute as @e[type=marker,tag=void_marker] run scoreboard players add @s void_eye_timer 1
execute as @e[type=marker,tag=void_marker,scores={void_eye_timer=1..}] run function ldmc:items/void_eye/effect

#Animate Effects
<<<<<<< HEAD:data/championsashes/functions/entity_tick.mcfunction
function championsashes:animated_effects/animated_effects
=======
execute as @e[tag=aj.rkgugs_skill.locator] at @s run function ldmc:animated_effects/rkgugs_skill
execute as @e[tag=aj.thunder_bullet.root] at @s unless entity @e[type=arrow,distance=..2] run function animated_java:thunder_bullet/remove/this
execute at @e[tag=aj.thunder_bullet.root] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.05 2
>>>>>>> c00843d9bb602a9deadaccd81aaafd86a55d17c8:data/ldmc/functions/entity_tick.mcfunction

tag @a[tag=!ally] add ally
tag @e[tag=pearl,tag=!ally] add ally
tag @e[tag=WARDEN,tag=!ally] add ally
tag @e[tag=guards,tag=!ally] add ally
tag @e[tag=night_cavalry,tag=!ally] add ally
tag @e[tag=charmed,tag=!ally] add ally

execute unless entity @e[tag=shield_breaker] at @a[limit=1] run summon piglin_brute ~ ~-10 ~ {ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b,Amplifier:1b,ShowIcon:0b}],IsImmuneToZombification:1,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["shield_breaker"],HandItems:[{id:"minecraft:netherite_axe",tag:{Damage:0},Count:1}],HandDropChances:[0f]}
execute as @e[type=marker,tag=gundyr_hitbox] at @s facing entity @a[limit=1,sort=nearest,tag=gundyr_halberd] feet positioned as @s run tp @s ^ ^ ^-0.4 ~ ~
execute as @a[advancements={championsashes:hurt_players=true}] run advancement revoke @s only championsashes:hurt_players