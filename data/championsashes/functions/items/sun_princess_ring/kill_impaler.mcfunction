function animated_java:gravity_impaler/remove/all
tag @a[tag=gravity_impaling_user] remove gravity_impaling_user
execute as @e[type=!#championsashes:special_entities,tag=gravity_impaled,limit=1,sort=nearest] run tag @s remove gravity_impaled