execute as @e[tag=death_blighted,limit=1,sort=nearest] run function championsashes:effects/true_kill
execute as @e[type=item_display,limit=1,sort=nearest,tag=aj.death_blighted.root] run function animated_java:death_blighted/remove/this
tag @a[tag=death_blighter] remove death_blighter