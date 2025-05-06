execute as @a[limit=1,sort=nearest] run function championsashes:animated_effects/animation_effects_handle/ride_off

execute as @e[tag=aj.kamui.root,limit=1,sort=nearest] run function animated_java:kamui/remove/this

tag @e[tag=kamui_target,limit=1,sort=nearest] remove kamui_target