function championsashes:items/sun_princess_ring/regen
execute if score @s[tag=!stiff] usedmedal matches 1.. unless score @s shift matches 1.. unless entity @e[tag=aj.write.root,distance=..5] run function championsashes:items/sun_princess_ring/nep
execute if score @s[tag=!stiff] usedmedal matches 1.. if score @s shift matches 1.. unless entity @e[tag=aj.write.root,distance=..5] run function championsashes:items/sun_princess_ring/cin
execute as @s[tag=field_extensioner] at @s run function championsashes:items/sun_princess_ring/field