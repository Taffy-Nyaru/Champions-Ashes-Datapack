execute unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker
tag @s[tag=ca.refreshed_clicker] remove ca.refreshed_clicker

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main ca.interaction_rClicker
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff,tag=!anchor_skill3,tag=!anchor_skill2,tag=!anchor_skill1] at @s unless entity @e[tag=aj.steel_anchor.root,distance=..20] run function championsashes:items/steel_anchor/anchor_skill3
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main ca.interaction_lClicker
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_lClick=1..}] as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin if entity @s[tag=!stiff,tag=!anchor_skill3,tag=!anchor_skill2,tag=!anchor_skill1] at @s unless entity @e[tag=anchor_missle,distance=..20] run function championsashes:items/steel_anchor/anchor_skill1

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker