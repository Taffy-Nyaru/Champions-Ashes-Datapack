data modify entity @s Invulnerable set value 1b
tag @s add phase3_transition
kill 3240cc2e-85da-4a3d-ae99-ba26a7bda8e4
ride @s mount @e[tag=nep_ride,limit=1,sort=nearest]
function animated_java:nep_phase3_transition/summon
execute as @e[tag=aj.nep_phase3_transition.root,distance=..20,type=item_display,limit=1,sort=nearest] run function animated_java:nep_phase3_transition/animations/nep_phase3_transition/play