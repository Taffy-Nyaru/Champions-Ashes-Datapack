data modify storage generic:main NepSelectedItem set from entity @s HandItems[0]
execute store result bossbar nep_elder max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar nep_elder value run data get entity @s Health

tag @a[gamemode=spectator,tag=nep_foe] remove nep_foe
tag @a[gamemode=creative,tag=nep_foe] remove nep_foe

#Ban recovering and deal 6 true damage only when using smite V or punch II
execute if entity @s[tag=nep_attacked_by_player] run function championsashes:entities/drakeblood_knight/nep_elder/player_uses_ban_recover
execute if entity @s[tag=nep_start_recover_cooling,tag=!nep_attacked_by_player] run function championsashes:entities/drakeblood_knight/nep_elder/recover_cooldown

#Destroy Blocks
execute unless block ~ ~ ~ air unless block ~ ~1 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks
execute unless block ~ ~0.5 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks
execute unless block ~ ~1 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks
execute unless block ~ ~1.5 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks

#Anti-Ride
execute on vehicle if entity @s[type=!item_display] run kill @s

#Destroy blocks and create platform if there are blocks in front, checks for every 8 seconds
execute if entity @p[tag=nep_foe,distance=..30] run function championsashes:entities/drakeblood_knight/nep_elder/teleport_ai
execute if score @s nep_block_destroy_timer matches 160.. run teleport @s @p[tag=nep_foe]

#Teleporting with blast
execute unless entity @e[type=item_display,tag=aj.nep_void_missle.root,distance=..5] if entity @e[tag=nep_foe,type=!player,type=!#championsashes:special_entities,distance=5..] run scoreboard players add teleport_skill.temp championsashes_Timer 1
execute if score teleport_skill.temp championsashes_Timer matches 160.. at @e[tag=nep_foe,type=!player,limit=1,sort=nearest] run teleport @s ~-1 ~0.5 ~-1
execute if score teleport_skill.temp championsashes_Timer matches 160.. at @e[tag=nep_foe,type=!player,type=!#championsashes:special_entities,distance=..20] run summon creeper ~ ~ ~ {Tags:["bomber"],Fuse:0,powered:1b}
execute if score teleport_skill.temp championsashes_Timer matches 160.. run scoreboard players set teleport_skill.temp championsashes_Timer 0

#Weapon Inventory
execute on target if score weapon_inventory math_output matches 100.. run tag @e[tag=nep_elder] add had_target
execute on target if score weapon_inventory math_output matches ..-100 run tag @e[tag=nep_elder] add had_target
#Change weapons by random possibility
execute if entity @s[tag=!nep_fire_phase,tag=!nep_ice_phase] run scoreboard players add weapon_class championsashes_Timer 1
execute if score weapon_class championsashes_Timer matches 100.. run function championsashes:entities/drakeblood_knight/nep_elder/weapon_class

#Favour Ring
execute unless data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:steel_anchor"}}} if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=1.8..] if score change_weapon_inventory math_output matches 551..800 run function championsashes:entities/drakeblood_knight/nep_elder/favour_ring
scoreboard players add #nep_favour_ring_exist_timer championsashes_Timer 1
execute if score #nep_favour_ring_exist_timer championsashes_Timer matches 10.. run kill @e[type=item_display,limit=1,sort=nearest,tag=nep_favour_ring]
execute if score #nep_favour_ring_exist_timer championsashes_Timer matches 10.. run scoreboard players set #nep_favour_ring_exist_timer championsashes_Timer 0
execute as @e[tag=nep_favour_ring,type=item_display,distance=5..] run kill @s

#Parry
execute if score parry_random math_output matches 1900.. run tag @s add elder_parrying
execute if score parry_random math_output matches ..-1900 run tag @s add elder_parrying
execute unless entity @e[tag=elder_parrying] run kill @e[tag=attacker_indicator]
execute unless entity @e[tag=elder_parrying] run kill @e[tag=parry_shield]
execute as @e[tag=elder_parrying,tag=!parry_stop] run function championsashes:entities/drakeblood_knight/nep_elder/parry
execute if entity @s[tag=parry_stop] run scoreboard players add parry_stop_timer championsashes_Timer 1
execute if score parry_stop_timer championsashes_Timer matches 512.. run tag @s remove parry_stop
execute if score parry_stop_timer championsashes_Timer matches 512.. run scoreboard players set parry_stop_timer championsashes_Timer 0

#---Weapon Abilities
#Black Knight Greataxe
execute if data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:black_knight_greataxe"}}} unless entity @s[tag=nep_attacked_by_player] at @e[tag=nep_foe,type=!#championsashes:special_entities,predicate=championsashes:hurttime,distance=..3] unless entity @e[type=creeper,tag=bomb,distance=..3] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["bomb"],Fuse:0,ExplosionRadius:1}

#Lightning
scoreboard players add #nep_use_lightning_strike_skill championsashes_Timer 1
execute if score #nep_use_lightning_strike_skill championsashes_Timer matches 256.. run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/drakeblood_greatsword_abilities
execute if score #nep_use_lightning_strike_skill championsashes_Timer matches 256.. as @e[tag=aj.ancient_lightning_strike.root,type=item_display,distance=..10] run function animated_java:ancient_lightning_strike/animations/ancient_lightning_strike/play
execute if score #nep_use_lightning_strike_skill championsashes_Timer matches 256.. run scoreboard players set #nep_use_lightning_strike_skill championsashes_Timer 0

#DragonSlayer greatbow
execute if data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:dragonslayer_greatbow"}}} run tag @s add loop_start
execute if entity @s[tag=loop_start] at @e[tag=nep_foe,type=!#championsashes:special_entities,predicate=championsashes:hurttime] positioned ~ ~4 ~ if score @s arrow_rain.temp matches 1.. run function championsashes:items/dragonslayer_greatbow/loop_summon_arrow
execute if score @s arrow_rain.temp matches 0 run tag @s remove loop_start
execute if score @s[tag=!loop_start] arrow_rain.temp matches 0 run scoreboard players set @s[tag=!loop_start] arrow_rain.temp 12

#Steel Anchor
execute if data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:steel_anchor"}}} run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/steel_anchor

#Moonlight Greatsword
execute if entity @s[tag=nep_ice_phase] run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/nep_ice_phase_timer
execute if entity @s[tag=nep_ice_animation] as @e[type=item_display,distance=..20,tag=aj.nep_moonlight_slash.root] at @s facing entity @e[tag=nep_foe,limit=1,sort=nearest,distance=..50,type=!#championsashes:special_entities] feet run tp @s ^ ^ ^ ~ ~

#Ringed Knight Straight Sword
execute if entity @s[tag=nep_fire_phase] run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/nep_fire_phase_timer
execute if entity @s[tag=nep_fire_animation] as @e[type=item_display,distance=..20,tag=aj.nep_ringed_knight_straight_sword.root] at @s facing entity @e[tag=nep_foe,limit=1,sort=nearest,distance=..50,type=!#championsashes:special_entities] feet run tp @s ^ ^ ^ ~ ~

#Hostile Bullets
function championsashes:animated_effects/animation_effects_handle/animated_effects_bullets_hostile

#Make all drakeblood knights fight
execute if entity @e[tag=nep_foe] as @e[tag=drakeblood_knight,tag=!attracted_drakeblood_knight] run function championsashes:entities/drakeblood_knight/nep_elder/attract_drakeblood_knight
execute unless entity @e[tag=nep_foe] as @e[tag=attracted_drakeblood_knight] run tag @s remove attracted_drakeblood_knight

#Phase 2 just started:
execute store result score @s Elder_Health run data get entity @s Health
execute unless entity @s[tag=phase2_started] positioned ^ ^ ^2 if score @s Elder_Health matches ..128 run function championsashes:entities/drakeblood_knight/nep_elder/phase2_start
execute as @s[tag=phase2_start_recovering] unless score @s Elder_Health matches 255.. run function championsashes:entities/drakeblood_knight/nep_elder/phase2_start_recovering
execute as @s[tag=phase2_start_recovering] if score @s Elder_Health matches 255.. run function championsashes:entities/drakeblood_knight/nep_elder/phase2_start_recovering_end

#Phase 2: If there is no drakeblood knight around, Summon a drakeblood knight and dragon head bomb every 30sec, breaking most natural spawn vanilla blocks
execute if score @s Elder_Health matches ..128 run tag @s add phase2
execute if score @s Elder_Health matches 130.. run kill @e[distance=..10,type=item_display,tag=nep_projectile]
execute if score @s Elder_Health matches 130.. run tag @s[tag=phase2] remove phase2

execute if entity @s[tag=phase2] run function championsashes:entities/drakeblood_knight/nep_elder/phase2

function championsashes:entities/drakeblood_knight/nep_elder/clear_negative_effects

execute if entity @s[tag=nep_attacked_by_player] run scoreboard players add @s nep_attacked_by_player_timer 1
execute if score @s nep_attacked_by_player_timer matches 20.. run tag @s remove nep_attacked_by_player
execute if score @s nep_attacked_by_player_timer matches 20.. run scoreboard players set @s nep_attacked_by_player_timer 0

bossbar set nep_elder players @a[tag=nep_bossbar_set]
tag @a[tag=!nep_bossbar_set,distance=..30] add nep_bossbar_set
data modify storage generic:main NepSelectedItem set value {}