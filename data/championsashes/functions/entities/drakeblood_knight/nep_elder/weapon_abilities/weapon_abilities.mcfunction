#Black Knight Greataxe
execute if data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:black_knight_greataxe"}}} unless entity @s[tag=nep_attacked_by_player] at @e[tag=nep_foe,type=!#championsashes:special_entities,predicate=championsashes:hurttime,distance=..3] unless entity @e[type=creeper,tag=bomb,distance=..3] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["bomb"],Fuse:0,ExplosionRadius:1}

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
