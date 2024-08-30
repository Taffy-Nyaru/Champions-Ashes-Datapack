execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff,predicate=championsashes:using_item/ringed_knight_straight_sword] if score @s shift matches 1.. at @s unless entity @e[tag=aj.rkss_skill.root,distance=..2] run function championsashes:items/ringed_knight_straight_sword/skill

execute if entity @e[tag=clicker,scores={lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main lClicker
execute as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin at @s run function championsashes:items/ringed_knight_straight_sword/attack
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 2031.. run item replace entity @s weapon.mainhand with air

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker