function animated_java:ancient_lightning_strike/summon
playsound minecraft:entity.lightning_bolt.thunder weather @a[limit=1,sort=nearest,tag=loop_lightning_bolt] ~ ~ ~ 1 1 1
tag @a[limit=1,sort=nearest] add animate_lightning_bolt
kill @s