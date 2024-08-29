execute as @e[tag=death_blighted_ride,limit=1,sort=nearest] run tag @s remove death_blighted_ride
execute as @e[tag=death_blighted,limit=1,sort=nearest] run kill @s
kill @e[tag=aj.death_blighted.root]
kill @e[tag=aj.death_blighted.bone]
