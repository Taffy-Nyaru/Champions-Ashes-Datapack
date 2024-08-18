function animated_java:gravity_orb/summon
execute as @e[tag=aj.gravity_orb.root] run function animated_java:gravity_orb/animations/explosion/play
kill @e[tag=aj.gravity_orb_projectile.root]
kill @e[tag=aj.gravity_orb_projectile.bone]