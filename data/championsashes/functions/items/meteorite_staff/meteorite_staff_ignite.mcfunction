scoreboard players add meteorite_staff_cmd championsashes_Timer 1
execute if score meteorite_staff_cmd championsashes_Timer matches 1.. run item modify entity @s weapon.mainhand championsashes:meteorite_staff_ignite
execute if score meteorite_staff_cmd championsashes_Timer matches 30.. run item modify entity @s weapon.mainhand championsashes:meteorite_staff
execute if score meteorite_staff_cmd championsashes_Timer matches 30.. run tag @s remove meteorite_staff_ignite
execute if score meteorite_staff_cmd championsashes_Timer matches 30.. run scoreboard players set meteorite_staff_cmd championsashes_Timer 0