function animated_java:space_based_missle/summon
tag @e[tag=aj.space_based_missle.root,limit=1,sort=nearest,type=item_display] add nep_space_based_laser
tag @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities] add nep_space_based_laser_locked_on
execute as @e[tag=nep_space_based_laser,type=item_display,limit=1,sort=nearest] run function animated_java:space_based_missle/animations/lockon_target/play
scoreboard players set @s nep_phase3_fume_ugs_use_space_based_laser 0