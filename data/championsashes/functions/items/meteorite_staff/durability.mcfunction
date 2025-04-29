execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 100.. run item replace entity @s weapon.mainhand with air
function championsashes:items/spacebar
execute as @s[tag=meteorite_staff_ignite] run function championsashes:items/meteorite_staff/meteorite_staff_ignite

execute if score @s[tag=!stiff] usedmedal matches 1.. run function championsashes:items/meteorite_staff/meteorite_staff