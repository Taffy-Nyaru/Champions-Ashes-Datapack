execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

item modify entity @s weapon.mainhand championsashes:charged
item modify entity @s weapon.mainhand championsashes:refill

execute if entity @e[tag=clicker,scores={lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main lClicker
execute as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin if entity @s[predicate=championsashes:using_item/zweihander] at @s as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 1 1 force
execute as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin if entity @s[predicate=championsashes:using_item/zweihander] at @s as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run damage @s 25 player_attack by @a[predicate=championsashes:using_item/zweihander,limit=1,sort=nearest]
execute if entity @s[advancements={championsashes:hurt_entities=true}] at @s as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run damage @s 25 player_attack by @a[predicate=championsashes:using_item/zweihander,limit=1,sort=nearest]

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff,predicate=championsashes:using_item/zweihander] at @s unless entity @e[tag=aj.giant_hunt.root,distance=..2] run function championsashes:items/zweihander/giant_hunt

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker