function animated_java:steel_anchor/remove/this
tag @a[limit=1,sort=nearest,tag=riding_display] remove riding_display

execute as @a[limit=1,sort=nearest,tag=anchor_skill1] run function championsashes:animated_effects/ride_off
tag @a[limit=1,sort=nearest,tag=anchor_skill1] remove anchor_skill1
tag @e[type=!#championsashes:special_entities,tag=skill1_anchor_mount] remove skill1_anchor_mount