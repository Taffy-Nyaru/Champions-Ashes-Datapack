execute at @e[tag=aj.wave_of_destruction.locator,tag=!player_camera] run function championsashes:animated_effects/wave_of_destruction
function animated_java:wave_of_destruction/remove/all
execute as @a[limit=1,sort=nearest] run function championsashes:animated_effects/animation_effects_handle/ride_off