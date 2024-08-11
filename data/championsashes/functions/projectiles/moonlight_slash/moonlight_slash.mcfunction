execute as @e[tag=moonlight_slash] at @s run function championsashes:projectiles/moonlight_slash/tracking
execute at @s if entity @e[tag=moonlight_slash,distance=128..] run kill @e[tag=moonlight_slash,distance=127..]
execute unless entity @e[tag=moonlight_slash] run tag @s remove moonlight