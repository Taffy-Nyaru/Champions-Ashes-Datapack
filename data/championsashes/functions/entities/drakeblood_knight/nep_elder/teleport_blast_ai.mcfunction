execute unless entity @e[type=item_display,tag=aj.nep_void_missle.root,distance=..5] if entity @e[tag=nep_foe,type=!player,type=!#championsashes:special_entities,distance=5..] run scoreboard players add teleport_skill.temp championsashes_Timer 1
execute if score teleport_skill.temp championsashes_Timer matches 160.. at @e[tag=nep_foe,type=!player,limit=1,sort=nearest] run teleport @s ~-1 ~0.5 ~-1
execute if score teleport_skill.temp championsashes_Timer matches 160.. at @e[tag=nep_foe,type=!player,type=!#championsashes:special_entities,distance=..20] run summon creeper ~ ~ ~ {Tags:["bomber"],Fuse:0,powered:1b}
execute if score teleport_skill.temp championsashes_Timer matches 160.. run scoreboard players set teleport_skill.temp championsashes_Timer 0
