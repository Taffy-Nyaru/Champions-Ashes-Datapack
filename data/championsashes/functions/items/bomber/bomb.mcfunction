execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin run item modify entity @s weapon.mainhand championsashes:rtx4090
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["bomb"],Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:netherite_pickaxe,tag:{CustomModelData:1390013},Count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker