advancement grant @s[advancements={ldmc:func/estus_cancel=false}] only ldmc:func/estus_cancel
scoreboard players remove @s itemCount 1
effect give @s instant_health 4 3 true
item modify entity @s weapon.mainhand ldmc:remove_one_item
tag @s remove estus_cancel
scoreboard players set @s estus_cancel_tick 0