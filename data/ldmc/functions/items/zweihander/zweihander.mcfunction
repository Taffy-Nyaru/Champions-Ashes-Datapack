execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

item modify entity @s weapon.mainhand ldmc:charged
item modify entity @s weapon.mainhand ldmc:refill

execute if entity @e[tag=clicker,scores={lClick=1..}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set from storage generic:main lClicker
execute as a346a606-7102-4c7f-b48d-14038f3a5e56 on origin if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:zweihander"}}}] at @s as @e[distance=..8,limit=1,type=!#ldmc:special_entities,tag=raycast.target,type=!player] run damage @s 25 player_attack by @a[nbt={SelectedItem:{tag:{id:"ldmc:zweihander"}}},limit=1,sort=nearest]
execute if entity @s[advancements={ldmc:hurt_entities=true}] at @s as @e[distance=..8,limit=1,type=!#ldmc:special_entities,tag=raycast.target,type=!player] run damage @s 25 player_attack by @a[nbt={SelectedItem:{tag:{id:"ldmc:zweihander"}}},limit=1,sort=nearest]

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker