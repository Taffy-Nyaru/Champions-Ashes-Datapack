scoreboard players set @s gravity_lightning 0
execute as @e[tag=aj.gravity_lightning_bolt.root,limit=1,sort=nearest] run function animated_java:gravity_lightning_bolt/remove/this
execute unless entity @e[tag=gravity_lightning_shocked] run function animated_java:gravity_lightning_bolt/remove/all
tag @s remove gravity_lightning_shocked