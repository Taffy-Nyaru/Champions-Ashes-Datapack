scoreboard players add @s estus_cancel_tick 1
execute if score @s[advancements={ldmc:estus_cancel=true}] estus_cancel_tick matches 1..5 if score @s shift matches 1.. unless entity @e[tag=raycast.target,type=!#ldmc:special_entities,distance=..6.5] run effect give @s instant_health 4 3 true
execute if score @s[advancements={ldmc:estus_cancel=true}] estus_cancel_tick matches 1..5 if score @s shift matches 1.. unless entity @e[tag=raycast.target,type=!#ldmc:special_entities,distance=..6.5] run item replace entity @s weapon.mainhand with air
execute if score @s estus_cancel_tick matches 15.. run tag @s remove estus_cancel
execute if score @s estus_cancel_tick matches 15.. run scoreboard players set @s estus_cancel_tick 0