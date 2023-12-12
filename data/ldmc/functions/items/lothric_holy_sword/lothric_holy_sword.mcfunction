execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=ldmc:using_item/lothric_holy_sword] unless entity @e[tag=lazer_beam,distance=..30] run function ldmc:projectiles/lazer_beam/initialize

execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 250.. run scoreboard players set @s damage -1
execute if score @s damage matches ..-1 run scoreboard players set @s damage 1

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker