execute unless data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:steel_anchor"}}} if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=1.8..] if score change_weapon_inventory math_output matches 551..800 run function championsashes:entities/drakeblood_knight/nep_elder/favour_ring
scoreboard players add #nep_favour_ring_exist_timer championsashes_Timer 1
execute if score #nep_favour_ring_exist_timer championsashes_Timer matches 10.. run kill @e[type=item_display,limit=1,sort=nearest,tag=nep_favour_ring]
execute if score #nep_favour_ring_exist_timer championsashes_Timer matches 10.. run scoreboard players set #nep_favour_ring_exist_timer championsashes_Timer 0
execute as @e[tag=nep_favour_ring,type=item_display,distance=5..] run kill @s