execute as @e[distance=..50,type=item_display,tag=moonlight_slash] at @s run function championsashes:projectiles/moonlight_slash/tracking
kill @e[type=item_display,tag=moonlight_slash,distance=50..]
execute unless entity @e[distance=..50,type=item_display,tag=moonlight_slash] run tag @s remove moonlight