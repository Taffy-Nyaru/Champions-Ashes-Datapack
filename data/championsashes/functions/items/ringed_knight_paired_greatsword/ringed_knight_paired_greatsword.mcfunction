execute unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker
tag @s[tag=ca.refreshed_clicker] remove ca.refreshed_clicker

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main ca.interaction_rClicker

#Skill
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] if score @s shift matches 1.. as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff] at @s unless entity @e[tag=aj.rkgugs_skill.root,distance=..4] run function championsashes:items/ringed_knight_paired_greatsword/skill

#L1
execute unless score @s shift matches 1.. as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff] at @s unless entity @e[tag=aj.rkgugs_skill.root,distance=..4] run function championsashes:items/ringed_knight_paired_greatsword/l1
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 2031.. run item replace entity @s weapon.mainhand with air

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main ca.interaction_lClicker
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_lClick=1..}] as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin if entity @s[tag=!stiff] as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run damage @s 20 player_attack by @a[limit=1,sort=nearest]
execute if entity @s[advancements={championsashes:hurt_entities=true}] at @s as @e[distance=..8,limit=1,type=!#championsashes:special_entities,tag=raycast.target,type=!player] run damage @s 20 player_attack by @a[limit=1,sort=nearest]

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker