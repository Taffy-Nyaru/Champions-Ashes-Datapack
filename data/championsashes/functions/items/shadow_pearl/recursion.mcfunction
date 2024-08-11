execute as @s[tag=undead,scores={recursion_times=1..},nbt=!{Inventory:[{Slot:-106b,tag:{id:"championsashes:void_totem"}}]}] run function championsashes:items/shadow_pearl/find_pearl
execute as @s[tag=undead,scores={recursion_times=0}] run tag @s remove undead

execute if entity @s[tag=shadow_pearl_ignite1] run scoreboard players add #pearl_ignite1 championsashes_Timer 1
execute if entity @s[tag=shadow_pearl_ignite2] run scoreboard players add #pearl_ignite2 championsashes_Timer 1
execute if entity @s[tag=shadow_pearl_ignite3] run scoreboard players add #pearl_ignite3 championsashes_Timer 1
execute if entity @s[tag=shadow_pearl_ignite4] run scoreboard players add #pearl_ignite4 championsashes_Timer 1
execute if entity @s[tag=shadow_pearl_ignite1] if score #pearl_ignite1 championsashes_Timer matches 20.. run function championsashes:items/shadow_pearl/ignite
execute if entity @s[tag=shadow_pearl_ignite2] if score #pearl_ignite2 championsashes_Timer matches 20.. run function championsashes:items/shadow_pearl/ignite
execute if entity @s[tag=shadow_pearl_ignite3] if score #pearl_ignite3 championsashes_Timer matches 20.. run function championsashes:items/shadow_pearl/ignite
execute if entity @s[tag=shadow_pearl_ignite4] if score #pearl_ignite4 championsashes_Timer matches 20.. run function championsashes:items/shadow_pearl/ignite

execute if score #pearl_ignite1 championsashes_Timer matches 20.. run tag @s[tag=shadow_pearl_ignite1] remove shadow_pearl_ignite1
execute if score #pearl_ignite2 championsashes_Timer matches 20.. run tag @s[tag=shadow_pearl_ignite2] remove shadow_pearl_ignite2
execute if score #pearl_ignite3 championsashes_Timer matches 20.. run tag @s[tag=shadow_pearl_ignite3] remove shadow_pearl_ignite3
execute if score #pearl_ignite4 championsashes_Timer matches 20.. run tag @s[tag=shadow_pearl_ignite4] remove shadow_pearl_ignite4

execute if score #pearl_ignite1 championsashes_Timer matches 20.. run scoreboard players set #pearl_ignite1 championsashes_Timer 0
execute if score #pearl_ignite2 championsashes_Timer matches 20.. run scoreboard players set #pearl_ignite2 championsashes_Timer 0
execute if score #pearl_ignite3 championsashes_Timer matches 20.. run scoreboard players set #pearl_ignite3 championsashes_Timer 0
execute if score #pearl_ignite4 championsashes_Timer matches 20.. run scoreboard players set #pearl_ignite4 championsashes_Timer 0