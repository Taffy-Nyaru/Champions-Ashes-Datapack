tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute facing ^ ^ ^-1 rotated ~ 0 run function animated_java:gravity_blackhole/summon
execute as @e[tag=aj.gravity_blackhole.root,limit=1,sort=nearest] run function animated_java:gravity_blackhole/animations/gravity_blackhole/play
tag @s add riding_display
tag @s add gravity_blackhole_user
tag @s remove remove_spacebar
execute as @s[gamemode=survival] run function championsashes:items/item_durability
