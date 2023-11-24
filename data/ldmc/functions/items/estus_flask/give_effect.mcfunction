scoreboard players remove @s estusCount 1
effect give @s instant_health 4 3 true
item modify entity @s weapon.mainhand ldmc:remove_one_item
tag @s remove estus_cancel
scoreboard players set @s estus_cancel_tick 0