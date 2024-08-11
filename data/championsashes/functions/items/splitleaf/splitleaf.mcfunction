execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=championsashes:using_item/splitleaf] if score @s shift matches 1.. at @s[tag=!helicopter] run summon item_display ~ ~1.5 ~ {item_display:"head",Tags:["splitleaf_skill"],item:{id:"netherite_sword",Count:1b,tag:{CustomModelData:1390065}}}
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=championsashes:using_item/splitleaf] if score @s shift matches 1.. run tag @s[tag=!helicopter] add helicopter

execute if entity @e[tag=clicker,scores={lClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main lClicker
execute if entity @s[advancements={championsashes:hurt_entities=true}] at @s as @e[distance=..5,limit=1,type=!#championsashes:special_entities,tag=!ally,tag=raycast.target] run damage @s 15 minecraft:player_attack by @a[limit=1,sort=nearest,predicate=championsashes:using_item/splitleaf]

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker