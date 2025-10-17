execute at 9a6ff330-02df-491b-b6ec-af95ffe08a65 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 5 10000

kill @e[tag=nep_ride,type=marker,limit=1,sort=nearest]

tag @e[tag=phase3_transition,type=wither_skeleton] remove phase3_transition

data modify entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] Invulnerable set value 0b

#execute at @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] at @s run function championsashes:entities/drakeblood_knight/nep_elder/teleport_to_summon_shrine_buffer
execute as @e[type=wither_skeleton,tag=nep_elder,limit=1,sort=nearest] at @s run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_started

function animated_java:nep_phase3_transition/remove/all