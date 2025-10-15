#Debug
execute as @e[tag=aj.nep_void_missle.bone,distance=5..,type=item_display] run function animated_java:nep_void_missle/remove/all
team join drakeblood_knights @e[tag=drakeblood_knight,type=wither_skeleton,distance=..50]

data modify storage generic:main NepSelectedItem set from entity @s HandItems[0]
execute store result bossbar nep_elder max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar nep_elder value run data get entity @s Health
execute store result score @s Elder_Health run data get entity @s Health
execute as @e[tag=nep_elder,type=wither_skeleton] store result score @s maxHealth run attribute @s generic.max_health base get

tag @a[gamemode=spectator,tag=nep_foe] remove nep_foe
tag @a[gamemode=creative,tag=nep_foe] remove nep_foe

#Ban recovering and deal 6 true damage only when using smite V or punch II
execute unless entity @s[tag=phase3] if entity @s[tag=nep_attacked_by_player] run function championsashes:entities/drakeblood_knight/nep_elder/player_uses_ban_recover
execute unless entity @s[tag=phase3] if entity @s[tag=nep_start_recover_cooling,tag=!nep_attacked_by_player] run function championsashes:entities/drakeblood_knight/nep_elder/recover_cooldown

#Destroy Blocks
function championsashes:entities/drakeblood_knight/nep_elder/destroy_block_when_suffocate

#Anti-Ride
execute on vehicle if entity @s[type=!item_display] run kill @s

#Destroy blocks and create platform if there are blocks in front, checks for every 8 seconds
execute if entity @p[tag=nep_foe,distance=..50] run function championsashes:entities/drakeblood_knight/nep_elder/teleport_ai
execute if score @s nep_block_destroy_timer matches 160.. run teleport @s @p[tag=nep_foe]

#Teleporting with blast
execute unless entity @s[tag=phase3] run function championsashes:entities/drakeblood_knight/nep_elder/teleport_blast_ai

#Weapon Inventory
execute unless entity @s[tag=phase3] run function championsashes:entities/drakeblood_knight/nep_elder/switch_weapon_ai

#Favour Ring
execute unless entity @s[tag=phase3] run function championsashes:entities/drakeblood_knight/nep_elder/favour_ring_ai

#Parry
execute unless entity @s[tag=phase3] run function championsashes:entities/drakeblood_knight/nep_elder/parry_ai

#Weapon Abilities
execute unless entity @s[tag=phase3] run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/weapon_abilities

#Hostile Bullets
function championsashes:animated_effects/animation_effects_handle/animated_effects_bullets_hostile
function championsashes:entities/drakeblood_knight/nep_elder/lightning_bolt

#Make all drakeblood knights fight
execute if entity @e[tag=nep_foe] as @e[tag=drakeblood_knight,tag=!attracted_drakeblood_knight] run function championsashes:entities/drakeblood_knight/nep_elder/attract_drakeblood_knight
execute unless entity @e[tag=nep_foe] as @e[tag=attracted_drakeblood_knight] run tag @s remove attracted_drakeblood_knight

#Phase 2 starts:
execute unless entity @s[tag=phase2_started] if score @s Elder_Health <= @s nep_half_health run function championsashes:entities/drakeblood_knight/nep_elder/teleport_to_summon_shrine_buffer
execute as @s[tag=phase2_start_recovering] unless score @s Elder_Health >= @s maxHealth run function championsashes:entities/drakeblood_knight/nep_elder/phase2/phase2_start_recovering
execute as @s[tag=phase2_start_recovering] if score @s Elder_Health >= @s maxHealth run function championsashes:entities/drakeblood_knight/nep_elder/phase2/phase2_start_recovering_end

#Phase 2:
execute if entity @s[tag=phase2] run function championsashes:entities/drakeblood_knight/nep_elder/phase2/phase2

#Phase 3 starts:
execute unless entity @s[tag=phase3_started] if score @s Elder_Health <= @s nep_20percent_health run function championsashes:entities/drakeblood_knight/nep_elder/teleport_to_summon_shrine_buffer

#Phase 3:
execute if score @s Elder_Health <= @s nep_20percent_health run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3

function championsashes:entities/drakeblood_knight/nep_elder/clear_negative_effects

execute if entity @s[tag=nep_attacked_by_player] run scoreboard players add @s nep_attacked_by_player_timer 1
execute if score @s nep_attacked_by_player_timer matches 20.. run tag @s remove nep_attacked_by_player
execute if score @s nep_attacked_by_player_timer matches 20.. run scoreboard players set @s nep_attacked_by_player_timer 0

bossbar set nep_elder players @a[tag=nep_bossbar_set]
tag @a[tag=!nep_bossbar_set,distance=..30] add nep_bossbar_set
data modify storage generic:main NepSelectedItem set value {}