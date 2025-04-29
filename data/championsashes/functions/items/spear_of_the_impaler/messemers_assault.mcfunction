execute unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker
tag @s[tag=ca.refreshed_clicker] remove ca.refreshed_clicker

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main ca.interaction_rClicker
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff] at @s unless entity @e[tag=aj.messemers_assault.root,distance=..2] run function championsashes:items/spear_of_the_impaler/skill
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 2031.. run item replace entity @s weapon.mainhand with air

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker