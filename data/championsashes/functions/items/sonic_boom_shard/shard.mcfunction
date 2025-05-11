execute unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker
tag @s[tag=ca.refreshed_clicker] remove ca.refreshed_clicker

tag @s add crown

#function championsashes:bijection/player/player
execute store result score @s ca.itemCount run data get entity @s SelectedItem.Count
execute if entity @e[type=warden,distance=..10] run tag @e[type=warden,distance=..10] add guards

effect clear @s darkness
effect give @s night_vision 60 0 true
execute at @e[team=!friendly,type=!#championsashes:special_entities,type=!warden] if entity @s[distance=..10] run effect give @e[team=!friendly,type=!#championsashes:special_entities,type=!warden,distance=..10] minecraft:glowing 60 1 true

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main ca.interaction_lClicker
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_lClick=1..}] as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin if entity @s[tag=!stiff] run function championsashes:items/sonic_boom_shard/sonic_boom
execute if entity @s[advancements={championsashes:hurt_entities=true}] if entity @e[tag=raycast.target,limit=1,type=!#championsashes:special_entities,distance=..10] run function championsashes:items/sonic_boom_shard/sonic_boom
execute if entity @s[advancements={championsashes:hurt_entities=true}] as 0001bf52-001d-4b42-0000-001d0000005c run damage @s[tag=!protected] 0 generic by @e[sort=nearest,tag=raycast.target,limit=1]

execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main ca.interaction_rClicker
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] if score @s shift matches 0 as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff] run function championsashes:items/sonic_boom_shard/tp
execute if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] if score @s shift matches 1.. as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff] run function championsashes:items/sonic_boom_shard/callback

execute if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker