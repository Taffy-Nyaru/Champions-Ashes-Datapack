#Alumopper Fumo
execute as @e[distance=..15,type=item_display,tag=aj.alumopper.root] at @s unless block ~ ~ ~ end_rod run function championsashes:blocks/alumopper_fumo/destroy
execute at @e[tag=fumo_clicker,limit=1,sort=nearest,distance=..6,scores={block_ca.interaction_lClick=1..}] as @e[tag=aj.alumopper.root,distance=..0.2,limit=1] at @s run function championsashes:blocks/alumopper_fumo/destroy
#Animation
execute at @e[tag=fumo_clicker,limit=1,sort=nearest,distance=..6,scores={block_ca.interaction_rClick=1..}] as @e[tag=aj.alumopper.root,distance=..0.2,limit=1] at @s run function animated_java:alumopper/animations/animation.alumopper.wavehand/play