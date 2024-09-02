execute at @e[tag=aj.wave_of_destruction.locator,tag=!player_camera] run function championsashes:animated_effects/wave_of_destruction
kill @e[tag=aj.wave_of_destruction.locator]
kill @e[tag=aj.wave_of_destruction.bone]
kill @e[tag=aj.wave_of_destruction.root,limit=1,sort=nearest]
execute as @a[limit=1,sort=nearest] run function championsashes:animated_effects/ride_off