function animated_java:rkgugs_skill/summon
execute as @e[tag=aj.rkgugs_skill.root,limit=1,sort=nearest] run function animated_java:rkgugs_skill/animations/rkgugs_skill/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add rkgugs_skill_user