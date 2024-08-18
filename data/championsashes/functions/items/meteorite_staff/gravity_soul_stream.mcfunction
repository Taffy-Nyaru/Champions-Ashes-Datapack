tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute facing ^ ^ ^-1 run function animated_java:gravity_soul_stream/summon
execute as @e[tag=aj.gravity_soul_stream.root,limit=1,sort=nearest] run function animated_java:gravity_soul_stream/animations/gravity_soul_stream/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add gravity_soul_stream_user
tag @s remove remove_spacebar