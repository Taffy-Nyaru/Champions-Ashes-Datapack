execute at @e[tag=summon_shrine,limit=1,sort=nearest,type=marker,distance=..60] run tp @s ~ ~ ~
#Teleport debug buffer
scoreboard players add nep_tp_debug_buffer championsashes_Timer 1

execute if score nep_tp_debug_buffer championsashes_Timer matches 5.. if entity @s[tag=!phase2_started,tag=!phase3,tag=!phase3_started] if score @s Elder_Health <= @s nep_half_health run function championsashes:entities/drakeblood_knight/nep_elder/phase2/phase2_start
#execute if score nep_tp_debug_buffer championsashes_Timer matches 5.. if entity @s[tag=!phase3_started,tag=!phase2,tag=!phase2_started] if score @s Elder_Health <= @s nep_40percent_health run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_started
execute if score nep_tp_debug_buffer championsashes_Timer matches 5.. run scoreboard players set nep_tp_debug_buffer championsashes_Timer 0