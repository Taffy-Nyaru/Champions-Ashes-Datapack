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
execute as @e[scores={onFire=1..}] run scoreboard players set @s frostbite_Timer 0
execute as @e[scores={scarlet_rot_Timer=1..}] at @s run function championsashes:effects/scarlet_rot/scarlet_rot
execute as @e[scores={scarlet_rot_Timer=0}] run scoreboard players set @s scarlet_rot_delay 0
execute as @e[scores={scarlet_rot_Timer=0}] run tag @s[tag=complete_rotten] remove complete_rotten
execute as @e[scores={death_blight_Timer=1..}] at @s run function championsashes:effects/death_blight/death_blight
execute if entity @e[scores={FireTick=1..}] as @e[scores={FireTick=1..}] run scoreboard players set @s frostbite_Timer 0

#Animate Effects
function championsashes:animated_effects/animated_effects
execute if entity @a[tag=air_detect,limit=1] run function championsashes:animated_effects/air_detect
execute as @e[tag=bullet_generated] at @s run function championsashes:items/carian_knights_sword/bullet_generator
execute unless entity @e[tag=ice_crystallized] run function championsashes:items/moonlight_greatsword/ice_crystal_kill
execute at @e[tag=aj.zamor_ice_storm.root] as @e[type=!#championsashes:special_entities,tag=!zamor_ice_storm_user,distance=..6.5] run function championsashes:items/moonlight_greatsword/ice_storm_damage
execute as @e[tag=purple_burned] at @s run function championsashes:items/fume_ultra_greatsword/purple_burned
execute as @e[type=!#championsashes:special_entities,tag=gravity_impaled] at @s run function championsashes:items/sun_princess_ring/ride
execute if entity @a[limit=1,sort=nearest,tag=anchor_skill3] as @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] at @s run function championsashes:items/steel_anchor/skill3_anchor_hitbox

#Parry
execute if entity @e[tag=parry_success] as @e[tag=parry_success] run function championsashes:parry/parry_success

#Void Eye
execute as @e[type=marker,tag=void_marker] run scoreboard players add @s void_eye_timer 1
execute as @e[type=marker,tag=void_marker,scores={void_eye_timer=1..}] run function championsashes:items/void_eye/effect

tag @a[tag=!ally] add ally
tag @e[tag=pearl,tag=!ally] add ally
tag @e[tag=WARDEN,tag=!ally] add ally
tag @e[tag=guards,tag=!ally] add ally
tag @e[tag=night_cavalry,tag=!ally] add ally
tag @e[tag=charmed,tag=!ally] add ally

execute unless entity @e[tag=shield_breaker] at @a[limit=1] run summon piglin_brute ~ ~-10 ~ {ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b,Amplifier:1b,ShowIcon:0b}],IsImmuneToZombification:1,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["shield_breaker"],HandItems:[{id:"minecraft:netherite_axe",tag:{Damage:0},Count:1}],HandDropChances:[0f]}
execute as @e[type=marker,tag=gundyr_hitbox] at @s facing entity @a[limit=1,sort=nearest,tag=gundyr_halberd] feet positioned as @s run tp @s ^ ^ ^-0.4 ~ ~
execute as @a[advancements={championsashes:hurt_players=true}] run advancement revoke @s only championsashes:hurt_players