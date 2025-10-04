function animated_java:ancient_lightning_strike/summon
execute as @e[tag=aj.ancient_lightning_strike.root,type=item_display,distance=..10] run tag @s add player_hostile_bullet
playsound minecraft:entity.lightning_bolt.thunder weather @a[limit=1,sort=nearest,tag=loop_lightning_bolt] ~ ~ ~ 1 1 1
tag @a[limit=1,sort=nearest] add animate_lightning_bolt
execute as @s[gamemode=survival] run function championsashes:items/item_durability
kill @s