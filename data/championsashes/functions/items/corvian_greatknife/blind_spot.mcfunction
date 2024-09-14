item modify entity @s weapon.mainhand championsashes:charged
item modify entity @s weapon.mainhand championsashes:refill

execute if score @s[tag=!stiff] usedCrossbow matches 1.. if score @s shift matches 1.. at @s unless entity @e[tag=aj.blind_spot.root,distance=..2] run function championsashes:items/corvian_greatknife/skill
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 465.. run item replace entity @s weapon.mainhand with air
scoreboard players set @s usedCrossbow 0