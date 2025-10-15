function animated_java:nep_fume_ugs_skills/remove/all

kill @e[tag=nep_ride,limit=1,sort=nearest,type=item_display]

execute as @e[tag=nep_elder,limit=1,sort=nearest,type=wither_skeleton] at @s run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_teleport

#scoreboard players set @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] nep_phase3_switch_to_dragonslayer 800