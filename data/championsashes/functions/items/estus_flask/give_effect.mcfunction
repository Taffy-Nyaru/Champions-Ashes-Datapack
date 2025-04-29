advancement grant @s[advancements={championsashes:func/estus_cancel=false}] only championsashes:func/estus_cancel
scoreboard players remove @s ca.itemCount 1
effect give @s instant_health 4 1 true
item modify entity @s weapon.mainhand championsashes:remove_one_item
tag @s remove estus_cancel
scoreboard players set @s estus_cancel_tick 0