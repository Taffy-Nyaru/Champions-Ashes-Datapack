item modify entity @s weapon.mainhand championsashes:charged
item modify entity @s weapon.mainhand championsashes:refill
execute on target run tag @s add stiff
execute on target run scoreboard players set @s custom_ca.entity.stiff_time 20