execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute store result score @s sworddamage run data get entity @s SelectedItem.tag.AttributeModifiers[{UUID:[I;1848056,25562485,1898994005,860320107]}].Amount
execute at @s as @e[type=!player,tag=raycast.target,distance=..10] run function championsashes:items/zweihander/black_blade/percentage
function championsashes:items/zweihander/black_blade/weakness

execute if entity @e[tag=clicker,scores={lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main lClicker
execute as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin if entity @s[predicate=championsashes:using_item/black_blade] at @s as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run function championsashes:items/zweihander/black_blade/attack
execute if entity @s[advancements={championsashes:hurt_entities=true}] at @s as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run function championsashes:items/zweihander/black_blade/attack

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=championsashes:using_item/black_blade] if score @s shift matches 1.. at @s as @s unless entity @e[tag=head_projectile,distance=..25] run function championsashes:items/zweihander/black_blade/projectile_shoot

execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 2031.. run scoreboard players set @s damage -1
execute if score @s damage matches ..-1 run scoreboard players set @s damage 1

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker