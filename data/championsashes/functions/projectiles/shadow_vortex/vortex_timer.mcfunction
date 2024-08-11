scoreboard players add @s vortex_timer 1
execute if score @s vortex_timer matches 1.. at @s run function championsashes:projectiles/shadow_vortex/vortex_function
execute if score @s vortex_timer matches 1200.. run kill @s
execute if score @s vortex_timer matches 1200.. run scoreboard players set @s vortex_timer 0
function championsashes:projectiles/shadow_vortex/rotation