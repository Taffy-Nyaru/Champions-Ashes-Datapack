execute as @e[tag=death_blighted,limit=1,sort=nearest] run function championsashes:effects/true_kill
kill @e[tag=aj.death_blighted.root]
kill @e[tag=aj.death_blighted.bone]
tag @a[tag=death_blighter] remove death_blighter