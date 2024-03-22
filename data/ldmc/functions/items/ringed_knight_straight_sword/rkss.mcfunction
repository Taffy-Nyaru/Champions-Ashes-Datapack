execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=ldmc:using_item/ringed_knight_straight_sword] run tag @s add cancel
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=ldmc:using_item/ringed_knight_straight_sword] if score @s shift matches 1.. at @s unless entity @e[tag=aj.rkss_skill.root,distance=..2] run function ldmc:items/ringed_knight_straight_sword/skill

execute if entity @e[tag=clicker,scores={lClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main lClicker
execute if entity @s[advancements={ldmc:hurt_entities=true}] at @s as @e[distance=..5,limit=1,type=!#ldmc:special_entities,tag=raycast.target] run function ldmc:items/ringed_knight_straight_sword/attack
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 2031.. run item replace entity @s weapon.mainhand with air

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker