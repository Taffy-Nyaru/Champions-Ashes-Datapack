execute as @e[scores={bleeding_Timer=1..}] run function ldmc:effects/bleeding/bleeding_time
execute as @e[scores={frostbite_Timer=1..}] run function ldmc:effects/frostbite/frostbite_time
scoreboard players reset @e[tag=phanalax0] kill.temp0
scoreboard players reset @e[tag=phanalax1] kill.temp1
scoreboard players reset @e[tag=phanalax2] kill.temp2
schedule function ldmc:tick20 20t