execute unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker


execute store result score @s sworddamage run data get entity @s SelectedItem.tag.AttributeModifiers[{UUID:[I;1848056,25562485,1898994005,860320107]}].Amount
execute as @e[type=!player,tag=raycast.target,distance=..10] run function championsashes:items/zweihander/black_blade/percentage
function championsashes:items/zweihander/black_blade/weakness

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main ca.interaction_lClicker
execute as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin at @s as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run tag @s add ca.items.black_blade_attack
execute if predicate championsashes:hurttime as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run tag @s add ca.items.black_blade_attack

execute as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=ca.items.black_blade_attack,type=!player] run function championsashes:items/zweihander/black_blade/attack

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main ca.interaction_rClicker
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if score @s shift matches 1.. at @s unless entity @e[tag=head_projectile,distance=..25] run function championsashes:items/zweihander/black_blade/projectile_shoot
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin unless score @s shift matches 1.. at @s unless entity @e[tag=aj.destined_death.root,distance=..2] run function championsashes:items/zweihander/black_blade/true_destined_death

execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 2031.. run scoreboard players set @s damage -1
execute if score @s damage matches ..-1 run scoreboard players set @s damage 1

execute if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker